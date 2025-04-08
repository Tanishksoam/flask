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
    message_body = data.get("Body", "").lower().strip()

    if not is_authorized_number(from_number):
        return jsonify({"error": "Unauthorized number"}), 403

    try:
        response_message = ""

        if message_body.startswith("register:"):
            try:
                # Example: register:John,28.6448,77.2167,Malibu
                details = message_body[len("register:"):].split(",")
                name = details[0].strip().title()
                latitude = float(details[1].strip())
                longitude = float(details[2].strip())
                favorite_surfspots = details[3].strip()

                save_user(from_number, name, latitude, longitude, favorite_surfspots)
                response_message = f"Hi {name}, you're registered successfully 🌊📍"

            except Exception as e:
                print("Register error:", e)
                response_message = "Error! Use: register:Name,lat,long,fav_spot"

        elif message_body.startswith("prefs:"):
            try:
                # Example: prefs: swellHeight=0.5-2, windSpeed=3-8
                prefs_raw = message_body[len("prefs:"):].split(",")
                prefs_dict = {}

                for pref in prefs_raw:
                    if "=" in pref and "-" in pref:
                        key, val = pref.split("=")
                        min_val, max_val = map(float, val.split("-"))
                        prefs_dict[f"{key.strip()}_min"] = min_val
                        prefs_dict[f"{key.strip()}_max"] = max_val

                update_user_preferences(from_number, prefs_dict)
                response_message = "Your preferences were saved successfully ⚙️"

            except Exception as e:
                print("Prefs error:", e)
                response_message = "Error! Use: prefs: swellHeight=0.5-2, windSpeed=3-8"

        else:
            response_message = "Send:\n- register:Name,lat,long,spot\n- prefs: swellHeight=0.5-2"

        twilio_client.messages.create(
            body=response_message,
            from_=twilio_whatsapp_number,
            to=from_number
        )

        return jsonify({"message": "Handled successfully"}), 200

    except Exception as e:
        print("Webhook error:", e)
        return jsonify({"error": str(e)}), 500

def save_user(phone, name, lat, lon, fav_spots):
    conn = get_db_connection()
    cursor = conn.cursor()
    try:
        cursor.execute("""
            INSERT INTO users (phone, name, latitude, longitude, favorite_surfspots)
            VALUES (%s, %s, %s, %s, %s)
            ON CONFLICT (phone) DO UPDATE
            SET name = EXCLUDED.name,
                latitude = EXCLUDED.latitude,
                longitude = EXCLUDED.longitude,
                favorite_surfspots = EXCLUDED.favorite_surfspots;
        """, (phone, name, lat, lon, fav_spots))
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
