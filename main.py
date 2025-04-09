from flask import Flask, request, jsonify
from twilio.rest import Client
from dotenv import load_dotenv
import os
import psycopg2
from psycopg2.extras import RealDictCursor

app = Flask(__name__)
load_dotenv()

# Twilio setup
account_sid = os.getenv("TWILIO_ACCOUNT_SID")
auth_token = os.getenv("TWILIO_AUTH_TOKEN")
twilio_whatsapp_number = os.getenv("TWILIO_WHATSAPP_NUMBER")
twilio_client = Client(account_sid, auth_token)

# PostgreSQL connection
def get_db_connection():
    return psycopg2.connect(
        host=os.getenv("PGHOST"),
        port=os.getenv("PGPORT"),
        dbname=os.getenv("POSTGRES_DB"),
        user=os.getenv("PGUSER"),
        password=os.getenv("PGPASSWORD")
    )

AUTHORIZED_NUMBERS = ["whatsapp:+919897283397", "whatsapp:+14155238886"]

def is_authorized_number(from_number):
    return from_number in AUTHORIZED_NUMBERS

@app.route("/whatsapp", methods=["POST"])
def whatsapp_webhook():
    data = request.form
    from_number = data.get("From")
    message_body = data.get("Body", "").strip()

    if not is_authorized_number(from_number):
        return jsonify({"error": "Unauthorized number"}), 403

    try:
        response_message = ""
        user = get_user(from_number)

        if message_body.lower() == "register now":
            create_or_reset_user(from_number)
            set_registration_state(from_number, "awaiting_name")
            response_message = "👋 Great! Let's get you registered.\nPlease enter your *name*:"
        
        elif user and user.get("registration_state") == "awaiting_name":
            update_user_field(from_number, "name", message_body.title())
            set_registration_state(from_number, "awaiting_location")
            response_message = (
                "✅ Name saved.\nNow, please share your *location* as `lat,long`\n"
                "Example: `28.6448,77.2167`"
            )

        elif user and user.get("registration_state") == "awaiting_location":
            try:
                lat, lon = map(float, message_body.split(","))
                update_user_field(from_number, "latitude", lat)
                update_user_field(from_number, "longitude", lon)
                set_registration_state(from_number, "awaiting_spot")
                response_message = (
                    "📍 Location saved.\nNow tell us your *favorite surf spot*:"
                )
            except:
                response_message = "⚠️ Invalid format. Send location like: `28.6448,77.2167`"

        elif user and user.get("registration_state") == "awaiting_spot":
            update_user_field(from_number, "favorite_surfspots", message_body.strip())
            set_registration_state(from_number, "completed")
            response_message = (
                "🌊 Surf spot saved!\n✅ You're now registered.\n"
                "You can now set your preferences like:\n"
                "`prefs: swellHeight=0.5-2, windSpeed=3-8`"
            )

        elif message_body.lower().startswith("prefs:"):
            if not user or user.get("registration_state") != "completed":
                response_message = "⚠️ You need to complete registration first. Send `register now`."
            else:
                try:
                    prefs_raw = message_body[len("prefs:"):].split(",")
                    prefs_dict = {}
                    for pref in prefs_raw:
                        if "=" in pref and "-" in pref:
                            key, val = pref.split("=")
                            min_val, max_val = map(float, val.split("-"))
                            prefs_dict[f"{key.strip()}_min"] = min_val
                            prefs_dict[f"{key.strip()}_max"] = max_val

                    update_user_preferences(from_number, prefs_dict)
                    response_message = "✅ Preferences updated successfully!"
                except Exception as e:
                    print("Prefs error:", e)
                    response_message = (
                        "⚠️ Error in saving preferences.\n"
                        "Use format like:\n"
                        "`prefs: swellHeight=0.5-2, windSpeed=3-8`"
                    )

        elif message_body.lower() in ["hi", "hello", "help"]:
            response_message = (
                "👋 Welcome! Here's what you can do:\n"
                "- `register now` to begin onboarding\n"
                "- `prefs: key1=min-max, key2=min-max`\n"
                "Example:\n`prefs: swellHeight=0.5-2, windSpeed=3-8`"
            )

        else:
            response_message = "🤖 Unknown command. Send `help` for options."

        twilio_client.messages.create(
            body=response_message,
            from_=twilio_whatsapp_number,
            to=from_number
        )

        return jsonify({"message": "Handled successfully"}), 200

    except Exception as e:
        print("Webhook error:", e)
        return jsonify({"error": str(e)}), 500


# DB Functions
def get_user(phone):
    conn = get_db_connection()
    cursor = conn.cursor(cursor_factory=RealDictCursor)
    try:
        cursor.execute("SELECT * FROM users WHERE phone = %s;", (phone,))
        return cursor.fetchone()
    finally:
        cursor.close()
        conn.close()

def create_or_reset_user(phone):
    conn = get_db_connection()
    cursor = conn.cursor()
    try:
        cursor.execute("""
            INSERT INTO users (phone, registration_state)
            VALUES (%s, %s)
            ON CONFLICT (phone) DO UPDATE
            SET registration_state = EXCLUDED.registration_state,
                name = NULL,
                latitude = NULL,
                longitude = NULL,
                favorite_surfspots = NULL;
        """, (phone, "awaiting_name"))
        conn.commit()
    finally:
        cursor.close()
        conn.close()

def set_registration_state(phone, state):
    conn = get_db_connection()
    cursor = conn.cursor()
    try:
        cursor.execute("UPDATE users SET registration_state = %s WHERE phone = %s;", (state, phone))
        conn.commit()
    finally:
        cursor.close()
        conn.close()

def update_user_field(phone, field, value):
    conn = get_db_connection()
    cursor = conn.cursor()
    try:
        cursor.execute(f"UPDATE users SET {field} = %s WHERE phone = %s;", (value, phone))
        conn.commit()
    finally:
        cursor.close()
        conn.close()

def update_user_preferences(phone, prefs):
    conn = get_db_connection()
    cursor = conn.cursor()
    try:
        set_clause = ", ".join(f"{k} = %s" for k in prefs.keys())
        values = list(prefs.values()) + [phone]
        cursor.execute(f"""
            UPDATE users SET {set_clause}
            WHERE phone = %s;
        """, values)
        conn.commit()
    finally:
        cursor.close()
        conn.close()

@app.route("/")
def home():
    return jsonify({"status": "WhatsApp onboarding running"}), 200

if __name__ == "__main__":
    app.run(debug=True, port=int(os.getenv("PORT", 8000)))
