from flask import Flask, request, jsonify
from twilio.rest import Client
from dotenv import load_dotenv
import os
import psycopg2
from psycopg2.extras import RealDictCursor

app = Flask(__name__)
load_dotenv()

# Twilio Credentials
account_sid = os.getenv("TWILIO_ACCOUNT_SID")
auth_token = os.getenv("TWILIO_AUTH_TOKEN")
twilio_whatsapp_number = os.getenv("TWILIO_WHATSAPP_NUMBER")

if not account_sid or not auth_token or not twilio_whatsapp_number:
    raise ValueError("Twilio credentials are missing.")

twilio_client = Client(account_sid, auth_token)

# Database connection
def get_db_connection():
    return psycopg2.connect(
        host=os.getenv("DB_HOST"),
        port=os.getenv("DB_PORT"),
        dbname=os.getenv("DB_NAME"),
        user=os.getenv("DB_USER"),
        password=os.getenv("DB_PASSWORD")
    )

# Predefined responses
PREDEFINED_RESPONSES = {
    "hi": "Hello! How can I assist you today?",
    "hello": "Hi there! What can I do for you?",
    "help": "Here are some options: 1. Order status 2. Account help 3. Contact support.",
    "order status": "Please provide your order number.",
    "account help": "For account-related queries, visit our website or contact support.",
    "contact support": "Reach our support team at support@example.com.",
    "bye": "Goodbye! Have a great day!",
    "default": "I'm sorry, I didn't understand that. Can you please rephrase?"
}

AUTHORIZED_NUMBERS = ["whatsapp:+919897283397", "whatsapp:+14155238886"]

def get_response_message(message_body):
    return PREDEFINED_RESPONSES.get(message_body, PREDEFINED_RESPONSES["default"])

def is_authorized_number(from_number):
    return from_number in AUTHORIZED_NUMBERS

@app.route("/whatsapp", methods=["POST"])
def whatsapp_webhook():
    try:
        data = request.form
        from_number = data.get("From")
        message_body = data.get("Body", "").lower().strip()

        if not is_authorized_number(from_number):
            return jsonify({"error": "Unauthorized number"}), 403

        # Check if message is like 'surf 20'
        if message_body.startswith("surf "):
            try:
                surf_id = int(message_body.split(" ")[1])
                conn = get_db_connection()
                cursor = conn.cursor(cursor_factory=RealDictCursor)
                cursor.execute("SELECT * FROM surf_spots WHERE id = %s;", (surf_id,))
                surf_spot = cursor.fetchone()
                cursor.close()
                conn.close()

                if surf_spot:
                    response_message = f"🌊 Surf Spot #{surf_id}:\n" + "\n".join(f"{k}: {v}" for k, v in surf_spot.items())
                else:
                    response_message = f"No surf spot found with ID {surf_id}."
            except Exception as e:
                print("Error querying DB:", e)
                response_message = "Oops! Could not fetch surf spot. Please try again."
        else:
            response_message = get_response_message(message_body)

        twilio_client.messages.create(
            body=response_message,
            from_=twilio_whatsapp_number,
            to=from_number
        )

        return jsonify({"message": "Message sent successfully"}), 200

    except Exception as e:
        print(f"Webhook error: {e}")
        return jsonify({"error": str(e)}), 500

@app.route('/')
def index():
    return jsonify({"Choo Choo": "Welcome to your Flask app 🚅"})

if __name__ == '__main__':
    app.run(debug=True, port=int(os.getenv("PORT", 8000)))
