from flask import Flask, jsonify
import os
from flask import Flask, request, jsonify
from twilio.rest import Client


app = Flask(__name__)

# Twilio Credentials
account_sid = "ACe92013a54876aade4aaf00e89cedbae2"
auth_token = "47d1e0c4687e1e5fed6357b91fcd0c1b"
twilio_whatsapp_number = "whatsapp:+14155238886"

# Validate Twilio credentials
if not account_sid or not auth_token or not twilio_whatsapp_number:
    raise ValueError("Twilio credentials are missing.")

twilio_client = Client(account_sid, auth_token)
print("Twilio client created successfully. ", twilio_client)

# Predefined responses and authorized numbers
PREDEFINED_RESPONSES = {
    "hi": "Hello! How can I assist you today?",
    "hello": "Hi there! What can I do for you?",
    "help": "Sure! Here are some options: 1. Order status 2. Account help 3. Contact support.",
    "order status": "Please provide your order number.",
    "account help": "For account-related queries, please visit our website or contact support.",
    "contact support": "You can reach our support team at support@example.com.",
    "bye": "Goodbye! Have a great day!",
    "default": "I'm sorry, I didn't understand that. Can you please rephrase?"
}
AUTHORIZED_NUMBERS = ["whatsapp:+919897283397", "whatsapp:+14155238886"]

def get_response_message(message_body):
    """
    Get a response message based on the incoming message body.
    """
    return PREDEFINED_RESPONSES.get(message_body, PREDEFINED_RESPONSES.get("default", "I'm sorry, I didn't understand that."))

def is_authorized_number(from_number):
    """
    Check if the sender's number is authorized.
    """
    return from_number in AUTHORIZED_NUMBERS

@app.route("/whatsapp", methods=["POST"])
def whatsapp_webhook():
    """
    Handle incoming WhatsApp messages via Twilio webhook.
    """
    try:
        # Extract data from the incoming request
        data = request.form
        from_number = data.get("From")
        message_body = data.get("Body", "").lower().strip()

        print("Data: ", data, message_body, from_number)
        print(f"Received message from {from_number}: {message_body}")

        # Check if the sender is authorized
        if not is_authorized_number(from_number):
            return jsonify({"error": "Unauthorized number"}), 403

        # Get the response message
        response_message = get_response_message(message_body)

        # Send response via Twilio
        twilio_client.messages.create(
            body=response_message,
            from_=twilio_whatsapp_number,
            to=from_number
        )

        print(f"Sent response to {from_number}: {response_message}")
        return jsonify({"message": "Message sent successfully"}), 200

    except Exception as e:
        print(f"Error processing message: {e}")
        return jsonify({"error": "Failed to process message", "details": str(e)}), 500


@app.route('/')
def index():
    return jsonify({"Choo Choo": "Welcome to your Flask app 🚅"})


if __name__ == '__main__':
    app.run(debug=True, port=os.getenv("PORT", default=8000))
