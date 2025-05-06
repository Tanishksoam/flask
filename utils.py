import os
import json
from sqlfunctions import get_user, update_user, get_nearby_spots, create_user
from apis import TwilioClient

def handle_registration_flow(user, phone, message, lat=None, lon=None):
    try:
        if not user and message.lower() == "register now":
            create_user(phone)
            return registration_step("awaiting_name")
        
        if not user:
            return registration_step("welcome")
        
        state = user.get('registration_state', 'welcome')
        
        if state == "awaiting_name":
            return handle_name(phone, message)
        
        if state == "awaiting_location":
            return handle_location(phone, message, lat, lon)
        
        if state == "awaiting_spot" and (lat or lon):
            return handle_spot_selection(phone,user, message)
        
        if state.startswith("preference_"):
            return handle_preference(phone, user, message, state)
        
        return handle_command(message)
    except Exception as e:
        print(f"Error in registration flow: {e}")
        return f"⚠️ An error occurred. Please try again later. {e}"


def registration_step(step):
    steps = {
        "welcome": (
            "🌊 Welcome to Surf Alert Bot!22\n"
            "You're not registered. Type *register now* to start!"
        ),
        "awaiting_name": "👋 Please enter your full name:22",
        "awaiting_location": (
            "📍 Please share your location using WhatsApp's location button22 📎\n"
            "(Tap the clip icon > Location > Share Live Location)"
        ),
        # REMOVED: awaiting_spot entry (now handled by template)
        "preference_swelldirection": (
            "🌊 Set Swell Direction Preferences (0-360 degrees)\n"
            "Format: *min,max*\nExample: 180,220"
        ),
        "preference_swellheight": (
            "🌊 Set Swell Height Preferences (meters)\n"
            "Format: *min,max*\nExample: 1.5,3.0"
        ),
        "preference_swellperiod": (
            "🌊 Set Swell Period Preferences (seconds)\n"
            "Format: *min,max*\nExample: 8,15"
        ),
        "preference_windspeed": (
            "🌬 Set Wind Speed Preferences (m/s)\n"
            "Format: *min,max*\nExample: 2,8"
        ),
        "completed": (
            "✅ Registration Complete!\n"
            "You'll receive alerts when conditions match your preferences!\n"
            "Type *help* for commands"
        )
    }
    return steps[step]

def handle_name(phone, message):
    if len(message.strip().split()) < 2:
        return "⚠️ Please enter your full name (first and last name)"
    
    update_user(phone, {
        "name": message.title(),
        "registration_state": "awaiting_location"
    })
    return registration_step("awaiting_location")

def handle_location(phone, message, lat, lon, is_retry=False):
    if not (lat and lon):
        return registration_step("awaiting_location")

    try:
        lat = float(lat)
        lon = float(lon)
        spots = get_nearby_spots(lat, lon)

        if not spots:
            return "⚠️ No surf spots found nearby. Please share a different location"

        # Send surf spots template
        twilio = TwilioClient()
        twilio.send_surfspots_template(  # <-- Uses your template function
            to=phone.split(":")[-1],
            spots=spots
        )

        # Instruction message
        instruction = "📍 Please select your surf spot by replying with its *ID* (number) from the list above."
        twilio.send_whatsapp(phone.split(":")[-1], instruction)

        # Preserve state if retrying (awaiting_spot)
        new_state = "awaiting_spot" if is_retry else "awaiting_location"
        update_user(phone, {
            "latitude": lat,
            "longitude": lon,
            "temp_spots": json.dumps(spots),
            "registration_state": new_state
        })
        return None

    except Exception as e:
        print(f"Location Error: {e}")
        return f"⚠️ Invalid location. Please use the location button ,error {e}"


def handle_spot_selection(phone, user, message):
    try:
        # Handle empty message (location attachment case)
        if not message.strip():
            return "⚠️ Please reply with the surf spot *number* (ID) from the list above 🔢"
        
        # Handle non-numeric input
        if not message.strip().isdigit():
            return "⚠️ Please enter only the *number* (ID) from the list. Example: 42"
        
        spots = json.loads(user['temp_spots'])
        selected_id = int(message.strip())
        
        # Validate spot ID exists
        selected_spot = next((spot for spot in spots if spot['id'] == selected_id), None)
        if not selected_spot:
            valid_ids = ", ".join(str(spot['id']) for spot in spots)
            return f"⚠️ Invalid ID. Choose from: {valid_ids}. "
        
        update_user(phone, {
            "favorite_surfspots": selected_spot['url'],
            "registration_state": "preference_swelldirection",
            "temp_spots": None
        })
        return registration_step("preference_swelldirection")
    
    except Exception as e:
        print(f"Error in handle_spot_selection: {e}")
        return f"⚠️ An error occurred. Please try again. Details: {str(e)}, spots"
    

def handle_preference(phone, user, message, state):
    try:
        field = '_'.join(state.split('_')[1:])  
        
        parts = [part.strip() for part in message.split(',')]
        if len(parts) != 2:
            return "⚠️ Please enter exactly two values separated by a comma (e.g., min,max)"
        
        min_val, max_val = map(float, parts)
        
        if min_val > max_val:
            return "⚠️ Min must be less than max. Try again"
        
        # Determine next preference state
        next_preference = get_next_preference(field)
        
        # Prepare updates
        updates = {
            f"{field}_min": min_val,
            f"{field}_max": max_val,
            "registration_state": f"preference_{next_preference}" if next_preference else "completed"
        }
        update_user(phone, updates)
        
        if not next_preference:
            return registration_step("completed")
        return registration_step(f"preference_{next_preference}")
    
    except ValueError as e:
        return f"⚠️ Invalid number format. Use numbers like 180,220. {e}"
    except Exception as e:
        print(f"Error in handle_preference: {e}")
        return f"⚠️ An error occurred. Please try again. {e}"

def get_next_preference(current):
    order = ['swelldirection', 'swellheight', 'swellperiod', 'windspeed']
    try:
        return order[order.index(current) + 1]
    except IndexError:
        return None

def handle_command(message):
    msg = message.lower()
    
    if msg in ['hi', 'hello', 'hey']:
        return "👋 Welcome back! Type *help* for options"
    
    if msg == 'help':
        return (
            "🆘 Help Menu:\n"
            "• *register now* - Start registration\n"
            "• *my spot* - Show current surf spot\n"
            "• *update prefs* - Update preferences\n"
            "• *status* - Check alert status\n"
            "• *mood* - Check your mood\n"
            "• *help* - Show this menu"
        )
    
    if msg == 'mood':
        return (
            "How are you feeling today? 😊",
            ["Good", "Neutral", "Not sure"]
        )
    
    if msg == 'good' or msg == 'Good':
        return "Your smile makes it better! 😊"
    
    if msg == 'neutral' or msg == 'Neutral':
        return "Let's find something to cheer you up! 🌞"
    
    if msg == 'not sure' or msg == 'Not sure':
        return "Take your time – I'm here when you need me 🤗"
    
    return "🤖 Sorry, I didn't understand that. Type *help* for options"

def get_next_preference(current):
    order = ['swelldirection', 'swellheight', 'swellperiod', 'windspeed']
    try:
        return order[order.index(current) + 1]
    except IndexError:
        return None


def check_hourly_conditions(hour_data, user):
    """Check if all parameters meet user preferences"""
    try:
        swell_dir_ok = (user['swelldirection_min'] <= hour_data['swell_wave_direction'] <= user['swelldirection_max'])
        swell_height_ok = (user['swellheight_min'] <= hour_data['swell_wave_height'] <= user['swellheight_max'])
        swell_period_ok = (user['swellperiod_min'] <= hour_data['swell_wave_period'] <= user['swellperiod_max'])
        wind_speed_ok = (user['windspeed_min'] <= hour_data['wind_speed'] <= user['windspeed_max'])
        
        return all([swell_dir_ok, swell_height_ok, swell_period_ok, wind_speed_ok])
    except KeyError as e:
        print(f"Missing preference field: {str(e)}")
        return False