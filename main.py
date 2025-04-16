from flask import Flask, request, jsonify
from sqlfunctions import *
from apis import TwilioClient
from utils import is_authorized_number, handle_registration_flow

import os

app = Flask(__name__)
twilio = TwilioClient()

@app.route("/whatsapp", methods=["POST"])
def whatsapp_webhook():
    try:
        data = request.form
        from_number = data.get("From")
        message_body = data.get("Body", "").strip()

        # Optional authorization
        # if not is_authorized_number(from_number):
        #     return jsonify({"error": "Unauthorized"}), 403

        user = get_user(from_number)
        response = handle_registration_flow(user, from_number, message_body)
        
        twilio.send_whatsapp(from_number, response)
        return jsonify({"status": "success"}), 200
    except Exception as e:
        print(f"Error: {str(e)}")
        return jsonify({"error": str(e)}), 500

@app.route("/")
def home():
    return jsonify({"status": "Active"}), 200

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 8000))
    app.run(host='0.0.0.0', port=port)
