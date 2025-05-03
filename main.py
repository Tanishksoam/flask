from flask import Flask, request, jsonify
# from sqlfunctions import get_user
# from apis import TwilioClient
# from utils import handle_registration_flow
# import os

# app = Flask(__name__)
# twilio = TwilioClient()

# @app.route("/whatsapp", methods=["POST"])
# def whatsapp_webhook():
#     try:
#         data = request.form
#         from_number = data.get("From").split(':')[-1]
#         message = data.get("Body", "").strip()  # Removed .lower() to preserve case for template responses
#         lat = data.get("Latitude")
#         lon = data.get("Longitude")

#         formatted_phone = f"whatsapp:{from_number}"
#         user = get_user(formatted_phone)
        
#         response = handle_registration_flow(
#             user, 
#             formatted_phone,
#             message,
#             lat,
#             lon
#         )
#         if response:
#             if isinstance(response, tuple):
#                 # Message with quick reply buttons
#                 body, actions = response
#                 twilio.send_whatsapp(from_number, body, actions)
#             else:
#                 # Regular text message
#                 twilio.send_whatsapp(from_number, response)
            
#         return jsonify({"status": "success"}), 200
    
#     except Exception as e:
#         print(f"CRITICAL ERROR: {str(e)}")
#         print(f"Request data: {dict(request.form)}")
#         return jsonify({"error": "Internal server error"}), 500

# @app.route("/")
# def health_check():
#     return jsonify({"status": "active", "service": "surf-alert-bot"}), 200

# if __name__ == "__main__":
#     port = int(os.environ.get("PORT", 8000))
#     app.run(host='0.0.0.0', port=port)

from twilio.rest import Client
import os
from apis import fetch_marine_weather

app = Flask(__name__)

def cron_job():
    user_details = {
        "user_name": "Ishita Verma",
        "user_number": "9897283397",
        "surf_spots": [4, 5],
        "swell": {
            "height": (1, 4),
            "direction": (30, 160),
            "period": (6, 12),
        },
        "secondary_swell": {
            "height": (1, 3),
            "direction": (40, 190),
            "period": (8, 18),
        },
        "wind": {
            "direction": (90, 240),
            "speed": (3, 20),
        },
    }

    print(f"Processing user: {user_details['user_number']}")

    data = fetch_marine_weather(54.294733, -8.95815)
    if data:
        print("Weather data fetched successfully.")
        print(data)
    else:
        print("Failed to fetch weather data.")

            

def send_sms():
    # Fetch credentials and numbers from environment
    account_sid = os.getenv("TWILIO_ACCOUNT_SID")
    auth_token = os.getenv("TWILIO_AUTH_TOKEN")
    from_number = os.getenv("TWILIO_WHATSAPP_NUMBER")
    to_number = "whatsapp:+919897283397"

    client = Client(account_sid, auth_token)
    print(f"Account SID: {account_sid}")
    print(f"Auth Token: {auth_token}")
    print(f"From Number: {from_number}")
    print(f"To Number: {to_number}")
    # Check if the client is initialized

    # Send the message
    message = client.messages.create(
        body="hi",
        from_=from_number,
        to=to_number
    )

    print(f"Message sent: SID = {message.sid}")
@app.route("/")
def health_check():
    return jsonify({"status": "active", "service": "surf-alert-bot"}), 200
if __name__ == "__main__":
    send_sms()
