from flask import Flask, request, jsonify
from sqlfunctions import get_user
from apis import TwilioClient
from utils import handle_registration_flow
import os

app = Flask(__name__)
twilio = TwilioClient()

@app.route("/whatsapp", methods=["POST"])
def whatsapp_webhook():
    try:
        data = request.form
        from_number = data.get("From").split(':')[-1]
        message = data.get("Body", "").strip()  # Removed .lower() to preserve case for template responses
        lat = data.get("Latitude")
        lon = data.get("Longitude")

        formatted_phone = f"whatsapp:{from_number}"
        user = get_user(formatted_phone)
        
        response = handle_registration_flow(
            user, 
            formatted_phone,
            message,
            lat,
            lon
        )
        if response:
            if isinstance(response, tuple):
                # Message with quick reply buttons
                body, actions = response
                twilio.send_whatsapp(from_number, body, actions)
            else:
                # Regular text message
                twilio.send_whatsapp(from_number, response)
            
        return jsonify({"status": "success"}), 200
    
    except Exception as e:
        print(f"CRITICAL ERROR: {str(e)}")
        print(f"Request data: {dict(request.form)}")
        return jsonify({"error": "Internal server error"}), 500

@app.route("/")
def health_check():
    return jsonify({"status": "active", "service": "surf-alert-bot"}), 200

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 8000))
    app.run(host='0.0.0.0', port=port)

