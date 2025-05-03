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
from datetime import datetime, timedelta
from utils import check_hourly_conditions
from sqlfunctions import get_surf_spot_details, get_db_connection


app = Flask(__name__)

def cron_job():
    user_details = {
        "user_name": "Ishita Verma",
        "user_number": "9897283397",
        "surf_spots": [8, 5],
        "swell": {
            "height": (0, 1000),
            "direction": (0, 4000),
            "period": (0, 1200),
        },
        "secondary_swell": {
            "height": (0, 100),
            "direction": (0, 1900),
            "period": (0, 1800),
        },
        "wind": {
            "direction": (0, 2400),
            "speed": (0, 2000),
        },
    }



    spot = {
        "spot_name": "Bundoran",
        "spot_id": 8,
        "latitude": 54.294733,
        "longitude": -8.95815,
    }
    print(f"Processing user: {user_details['user_number']}")
    for i in range(len(user_details["surf_spots"])):
        spot_details = get_surf_spot_details(str(user_details["surf_spots"][i]))

        data = fetch_marine_weather(spot_details["latitude"], spot_details["longitude"])
        print(spot_details)

        for hour in data:
            if check_hourly_conditions(hour, user_details):
                compliant_time = datetime.fromisoformat(hour["time"].replace('Z', '+00:00'))
                alert_time = compliant_time - timedelta(hours=1)
                if alert_time < datetime.now(compliant_time.tzinfo):
                    continue  # Skip past alerts
                
                # Store alert
                alert_id = f"{user_details['user_number']}-{1}-{hour['time']}"
                alert = {
                    alert_id,
                    user_details['user_number'],
                    spot["spot_id"],
                    spot["spot_name"],
                    compliant_time,
                    alert_time
                }
                
                
                if (alert_time - datetime.now(compliant_time.tzinfo)) <= timedelta(minutes=15):
                    #send whatsapp message  
                    print(f"Sending immediate alert to {user_details['user_number']} for {spot['spot_name']} at {compliant_time}")
                    send_sms()
                    break
                if (alert_time):
                    send_sms()
                    print(f"Alert stored: {alert_time } \n {datetime.now(compliant_time.tzinfo)} \n {alert_time - datetime.now(compliant_time.tzinfo)}")
                    break

    if data:
        print("Weather data fetched successfully.")
    else:
        print("Failed to fetch weather data.")

            

def send_sms():
    # Fetch credentials and numbers from environment
    account_sid = os.getenv("TWILIO_ACCOUNT_SID")
    auth_token = os.getenv("TWILIO_AUTH_TOKEN")
    from_number = f"whatsapp:{os.getenv('TWILIO_WHATSAPP_NUMBER')}"
    to_number = "whatsapp:+919897283397"

    client = Client(account_sid, auth_token)
    print(f"Account SID: {account_sid}")
    print(f"Auth Token: {auth_token}")
    print(f"From Number: {from_number}")
    print(f"To Number: {to_number}")
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
    cron_job()
    # send_sms()
