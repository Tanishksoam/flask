import json
import os
from sqlfunctions import get_user, update_user, get_nearby_spots


def is_authorized_number(phone):
    authorized = json.loads(os.getenv("AUTHORIZED_NUMBERS"))
    return f"whatsapp:{phone}" in authorized

def handle_registration_flow(user, phone, message):
    if message.lower() == "register now":
        create_user(phone)
        return "👋 Great! Let's get you registered.\nPlease enter your *name*:"
    
    if not user:
        return "⚠️ Please start with `register now`"
    
    state = user.get('registration_state')
    
    if state == "awaiting_name":
        update_user(phone, {"name": message.title(), "registration_state": "awaiting_location"})
        return "✅ Name saved.\nShare your *location* as `lat,long`\nEx: `28.6448,77.2167`"
    
    if state == "awaiting_location":
        try:
            lat, lon = map(float, message.split(','))
            spots = get_nearby_spots(lat, lon)
            update_user(phone, {
                "latitude": lat,
                "longitude": lon,
                "temp_spots": ",".join(spots),
                "registration_state": "awaiting_spot"
            })
            spots_list = "\n".join([f"{i+1}. {s}" for i,s in enumerate(spots)])
            return f"🌊 Nearby surf spots:\n{spots_list}\nReply with spot number"
        except:
            return "⚠️ Invalid location format. Send like `28.6448,77.2167`"
    
    if state == "awaiting_spot":
        try:
            index = int(message) - 1
            spots = user['temp_spots'].split(',')
            update_user(phone, {
                "favorite_surfspots": spots[index],
                "registration_state": "completed",
                "temp_spots": None
            })
            return f"🏄 Awesome! You've selected {spots[index]}!"
        except:
            return "❌ Invalid selection. Please reply with the correct number."
    
    return handle_commands(message, user)

def handle_commands(message, user):
    # Add other command handlers here
    if message.lower() == "help":
        return "🆘 Help Menu:\n- Register: `register now`\n- Set prefs: `prefs: swell=0.5-2`"
    return "🤖 Unknown command. Send `help` for options."

def create_user(phone):
    update_user(phone, {"registration_state": "awaiting_name"})