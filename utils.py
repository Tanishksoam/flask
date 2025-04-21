import os
import json
from sqlfunctions import get_user, update_user, get_nearby_spots, create_user

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
        
        if state == "awaiting_spot":
            return handle_spot_selection(phone, user, message)
        
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
        "awaiting_spot": lambda spots: (
            "🏄 Nearby Surf Spots (20km radius):\n" +
            "\n".join([f"{idx+1}. {s['name']} ({s['distance']:.1f}m)" 
                      for idx, s in enumerate(spots)]) +
            "\n\nReply with the spot number:"
        ),
        "preference_swell_dir": (
            "🌊 Set Swell Direction Preferences (0-360 degrees)\n"
            "Format: *min,max*\nExample: 180,220"
        ),
        "preference_swell_height": (
            "🌊 Set Swell Height Preferences (meters)\n"
            "Format: *min,max*\nExample: 1.5,3.0"
        ),
        "preference_swell_period": (
            "🌊 Set Swell Period Preferences (seconds)\n"
            "Format: *min,max*\nExample: 8,15"
        ),
        "preference_wind_speed": (
            "🌬 Set Wind Speed Preferences (m/s)\n"
            "Format: *min,max*\nExample: 2,8"
        ),
        "completed": (
            "✅ Registration Complete!\n"
            "You'll receive alerts when conditions match your preferences!\n"
            "Type *help* for commands"
        )
    }
    return steps[step] #if not callable(steps[step]) else steps[step]

def handle_name(phone, message):
    if len(message.strip().split()) < 2:
        return "⚠️ Please enter your full name (first and last name)"
    
    update_user(phone, {
        "name": message.title(),
        "registration_state": "awaiting_location"
    })
    return registration_step("awaiting_location")

def handle_location(phone, message, lat, lon):
    if not (lat and lon):
        return registration_step("awaiting_location")
    
    try:
        lat = float(lat)
        lon = float(lon)
        spots = get_nearby_spots(lat, lon)
        
        if not spots:
            return "⚠️ No surf spots found nearby. Please share a different location"
        
        update_user(phone, {
            "latitude": lat,
            "longitude": lon,
            "temp_spots": json.dumps(spots),
            "registration_state": "awaiting_spot"
        })
        return registration_step("awaiting_spot")(spots)
        # return f"⚠️ No surf spots found nearby. {spots}"
    except:
        return "⚠️ Invalid location. Please use the location button"

def handle_spot_selection(phone, user, message):
    try:
        spots = json.loads(user['temp_spots'])
        index = int(message) - 1
        
        if 0 <= index < len(spots):
            update_user(phone, {
                "favorite_surfspots": spots[index]['url'],
                "registration_state": "preference_swell_dir",
                "temp_spots": None
            })
            return registration_step("preference_swell_dir")
        raise ValueError
    except:
        return "❌ Invalid selection. Please choose a valid number"
    

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
            "• *help* - Show this menu"
        )
    
    return "🤖 Sorry, I didn't understand that. Type *help* for options"

def get_next_preference(current):
    order = ['swell_dir', 'swell_height', 'swell_period', 'wind_speed']
    try:
        return order[order.index(current) + 1]
    except IndexError:
        return None