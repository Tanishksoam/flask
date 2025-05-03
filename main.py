# from flask import Flask, request, jsonify
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

def send_sms():
    # Fetch credentials and numbers from environment
    account_sid = os.getenv("TWILIO_ACCOUNT_SID")
    auth_token = os.getenv("TWILIO_AUTH_TOKEN")
    from_number = os.getenv("TWILIO_PHONE_NUMBER")
    to_number = os.getenv("whatsapp:+919897283397")

    client = Client(account_sid, auth_token)

    # Send the message
    message = client.messages.create(
        body="hi",
        from_=from_number,
        to=to_number
    )

    print(f"Message sent: SID = {message.sid}")

if __name__ == "__main__":
    send_sms()
