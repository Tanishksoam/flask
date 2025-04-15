import json
import os
from sqlfunctions import get_user, update_user, get_nearby_spots


def is_authorized_number(phone):
    authorized = json.loads(os.getenv("AUTHORIZED_NUMBERS", "[]"))
    return f"whatsapp:{phone}" in authorized

def handle_registration_flow(user, phone, message):
    msg = message.lower()

    # Predefined responses
    if msg in ["hi", "hello", "hey"]:
        return "👋 Hi there! You can type `register now` to begin.\nSend `help` to see all commands."

    if msg == "help":
        return ("🆘 *Help Menu:*\n"
                "- `register now`: Start registration\n"
                "- `help`: Show available commands\n"
                "- During registration, follow prompts like `name`, `lat,long`, etc.")

    if msg == "register now":
        if not user:
            create_user(phone)
        else:
            update_user(phone, {"registration_state": "awaiting_name"})
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
            spots_list = "\n".join([f"{i+1}. {s}" for i, s in enumerate(spots)])
            return f"🌊 Nearby surf spots:\n{spots_list}\nReply with the spot *number*"
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

    return handle_commands(msg, user)

def handle_commands(message, user):
    # More commands can be added here later
    return "🤖 Unknown command. Send `help` for available options."

def create_user(phone):
    update_user(phone, {"registration_state": "awaiting_name"})
