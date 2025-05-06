from twilio.rest import Client
import os
from flask import Flask
from apis import fetch_marine_weather
from datetime import datetime, timedelta
from utils import check_hourly_conditions
from sqlfunctions import get_surf_spot_details, get_db_connection


app = Flask(__name__)

def cron_job():
    user_details = {
        "user_name": "Ishita Verma",
        "user_number": "+919897283397",
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
                    alert_message = (
                        f"""🌊 Surf Alert!\nHey {user_details['user_name']}, conditions are perfect for surfing at {spot_details['spot_name']}!\nRecommended surf time: {compliant_time.strftime('%Y-%m-%d %H:%M:%S')}."""
                    )
                    send_sms(user_details['user_number'], alert_message)
                    break
                if (alert_time):
                    alert_message = (
                            f"""🌊 Surf Alert!\n Hey {user_details['user_name']}, conditions are perfect for surfing at {spot_details['spot_name']}!\nRecommended surf time: {compliant_time.strftime('%Y-%m-%d %H:%M:%S')}."""
                    )
                    send_sms(user_details['user_number'], alert_message)
                    print(f"Alert stored: {alert_time } \n {datetime.now(compliant_time.tzinfo)} \n {alert_time - datetime.now(compliant_time.tzinfo)}")
                    break

    if data:
        print("Weather data fetched successfully.")
    else:
        print("Failed to fetch weather data.")

            

def send_sms(to_number, message_body):
    import logging
    logger = logging.getLogger(__name__)
    
    try:
        account_sid = os.getenv("TWILIO_ACCOUNT_SID")
        auth_token = os.getenv("TWILIO_AUTH_TOKEN")
        from_number = os.getenv('TWILIO_PHONE_NUMBER')  
        
        logger.info(f"Attempting to send message to: {to_number}")
        logger.info(f"Using from number: {from_number}")
        logger.info(f"Account SID: {account_sid}")
        
        if not account_sid or not auth_token or not from_number:
            logger.error("Twilio credentials not found in environment variables")
            raise ValueError("Twilio credentials not found")

        client = Client(account_sid, auth_token)
        message = client.messages.create(
            body=message_body,
            from_=from_number,
            to=to_number
        )
        logger.info(f"Message sent successfully. SID: {message.sid}")
        return True
        
    except Exception as e:
        logger.error(f"Failed to send SMS: {str(e)}")
        raise


@app.route("/")
def health_check():
    return jsonify({"status": "active", "service": "surf-alert-bot"}), 200
if __name__ == "__main__":
    cron_job()
    # send_sms()
