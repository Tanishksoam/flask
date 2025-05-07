# from celery import Celery
# from datetime import datetime, timedelta
# from apis import fetch_marine_weather
# from utils import check_hourly_conditions
# from sqlfunctions import get_all_users, get_surf_spot_details
# from twilio_config import TwilioClient
# import logging

# # Initialize Celery
# celery = Celery("tasks", broker="redis://localhost:6379/0")
# celery.conf.timezone = 'UTC'
# celery.config_from_object('celeryconfig')

# # Set up logging
# logger = logging.getLogger(__name__)
# twilio_client = TwilioClient()

# @celery.task(bind=True)
# def schedule_whatsapp_alert(self, user_number, user_name, spot_name, alert_time):
#     """Schedule a WhatsApp alert to be sent at a specific time"""
#     try:
#         # Clean number format (remove existing 'whatsapp:' prefix if present)
#         clean_number = user_number.replace("whatsapp:", "")
        
#         alert_time = datetime.fromisoformat(alert_time)
#         message = (
#             f"🌊 Surf Alert!\nHey {user_name}, conditions are perfect for surfing at {spot_name}!\n"
#             f"Alert scheduled at: {alert_time.strftime('%Y-%m-%d %H:%M:%S')}\n"
#             f"Recommended surf time: {alert_time.strftime('%Y-%m-%d %H:%M:%S')}"
#         )
        
#         # Schedule the message using Celery's eta parameter
#         test_whatsapp_alert.apply_async(
#             args=[clean_number, message],
#             eta=alert_time
#         )
        
#         logger.info(f"Alert scheduled for {user_name} at {spot_name} for {alert_time}")
#         return {'status': 'success', 'timestamp': datetime.now().isoformat()}
        
#     except Exception as e:
#         logger.error(f"Failed to schedule alert: {str(e)}")
#         self.retry(exc=e, countdown=60, max_retries=3)

# @celery.task(bind=True)
# def test_whatsapp_alert(self, to_number, message):
#     """Send WhatsApp message"""
#     try:
#         logger.info(f"Sending WhatsApp to {to_number}")
#         twilio_client.send_whatsapp(to_number, message)
#         return {'status': 'success', 'timestamp': datetime.now().isoformat()}
        
#     except Exception as e:
#         error_msg = str(e)
#         if "429" in error_msg or "rate limit" in error_msg.lower():
#             # For rate limit errors, wait longer before retrying
#             retry_count = self.request.retries
#             # Exponential backoff with longer initial wait
#             retry_delay = 60 * (2 ** retry_count)  # Start with 60 seconds
#             logger.warning(f"Rate limit hit. Retrying in {retry_delay} seconds...")
#             self.retry(countdown=retry_delay, max_retries=5)
#         else:
#             logger.error(f"Test alert failed: {error_msg}")
#             self.retry(countdown=2 ** self.request.retries, max_retries=3)

# @celery.task
# def schedule_daily_check():
#     """Main surf check scheduled task"""
#     logger.info("⏰ Starting daily surf checks")
#     users = get_all_users()
    
#     for user in users:
#         for spot_id in user.get("surf_spots", []):
#             spot = get_surf_spot_details(spot_id)
#             if not spot or 'latitude' not in spot or 'longitude' not in spot:
#                 continue

#             hourly_forecast = fetch_marine_weather(spot['latitude'], spot['longitude'])
#             if not hourly_forecast:
#                 continue

#             for hour_data in hourly_forecast:
#                 if check_hourly_conditions(hour_data, user):
#                     compliant_time = datetime.fromisoformat(hour_data["time"].replace("Z", "+00:00"))
#                     alert_time = compliant_time - timedelta(hours=3)
                    
#                     if alert_time > datetime.now(alert_time.tzinfo):
#                         send_alert.apply_async(
#                             args=[user["user_number"], user["user_name"], spot['spot_name'], compliant_time.isoformat()],
#                             eta=alert_time
#                         )
#                         break

# @celery.task(bind=True)
# def send_alert(self, user_number, user_name, spot_name, compliant_time_iso):
#     """Send WhatsApp alert to user"""
#     try:
#         # Clean number format (remove existing 'whatsapp:' prefix if present)
#         clean_number = user_number.replace("whatsapp:", "")
        
#         compliant_time = datetime.fromisoformat(compliant_time_iso)
#         message = (
#             f"🌊 Surf Alert!\nHey {user_name}, conditions look great at {spot_name}!\n"
#             f"Best time: {compliant_time.strftime('%Y-%m-%d %H:%M:%S')}"
#         )
        
#         logger.info(f"Sending alert to {clean_number}")
#         twilio_client.send_whatsapp(clean_number, message)
        
#     except Exception as e:
#         logger.error(f"Alert failed for {clean_number}: {str(e)}")
#         self.retry(exc=e, countdown=60, max_retries=3)

from celery import Celery
from datetime import datetime, timedelta
from apis import fetch_marine_weather
from utils import check_hourly_conditions
from sqlfunctions import get_all_users, get_surf_spot_details
from twilio_config import TwilioClient
import logging

celery = Celery("tasks", broker="redis://localhost:6379/0")
celery.conf.timezone = 'UTC'
celery.config_from_object('celeryconfig')

logger = logging.getLogger(__name__)
twilio_client = TwilioClient()

def get_user_preferences(user):
    """Extract preferences in the required format"""
    return {
        'swelldirection_min': user['swell']['direction'][0],
        'swelldirection_max': user['swell']['direction'][1],
        'swellheight_min': user['swell']['height'][0],
        'swellheight_max': user['swell']['height'][1],
        'swellperiod_min': user['swell']['period'][0],
        'swellperiod_max': user['swell']['period'][1],
        'windspeed_min': user['wind']['speed'][0],
        'windspeed_max': user['wind']['speed'][1]
    }

@celery.task
def schedule_daily_check():
    """Main task to check conditions for all users"""
    logger.info("🏄 Starting daily surf checks")
    
    users = [
        {  # Dummy user
            "user_name": "Ishita Verma",
            "user_number": "+919897283397",
            "surf_spots": [8, 5],
            "swell": {"height": (0, 1000), "direction": (0, 4000), "period": (0, 1200)},
            "secondary_swell": {"height": (0, 100), "direction": (0, 1900), "period": (0, 1800)},
            "wind": {"direction": (0, 2400), "speed": (0, 2000)}
        }
    ]
    
    for user in users:
        for spot_id in user["surf_spots"]:
            spot = get_surf_spot_details(str(spot_id))
            logger.info(f"Processing spot: {spot['spot_name']}, {spot['latitude']}, {spot['longitude']}")
            if not spot:
                continue

            try:
                weather_data = fetch_marine_weather(spot['latitude'], spot['longitude'])
                if not weather_data:
                    continue

                for hour in weather_data:
                    if check_hourly_conditions(hour, get_user_preferences(user)):
                        compliant_time = datetime.fromisoformat(hour["time"].replace("Z", "+00:00"))
                        alert_time = compliant_time - timedelta(hours=3)
                        
                        if alert_time > datetime.now(compliant_time.tzinfo):
                            schedule_alert.apply_async(
                                args=[user["user_number"], user["user_name"], 
                                spot['spot_name'], compliant_time.isoformat()],
                                eta=alert_time + timedelta(minutes=15)
                            )
                            logger.info(f"Scheduled alert for {user['user_name']} at {alert_time}")
                            break  # Only schedule first matching hour

            except Exception as e:
                logger.error(f"Error processing spot {spot_id}: {str(e)}")

@celery.task(bind=True)
def schedule_alert(self, user_number, user_name, spot_name, compliant_time_iso):
    """Send WhatsApp alert to user"""
    try:
        lock_key = f"alert_lock:{user_number}:{spot_name}:{compliant_time_iso}"
        if redis.get(lock_key):
            logger.info(f"Alert already sent for {spot_name} at {compliant_time_iso}")
            return
        compliant_time = datetime.fromisoformat(compliant_time_iso)
        message = (
            f"🌊 Surf Alert!\nHey {user_name}, perfect conditions at {spot_name}!\n"
            f"Best time: {compliant_time.strftime('%Y-%m-%d %H:%M')} UTC"
        )
        
        twilio_client.send_whatsapp(
            to_number=user_number.replace("whatsapp:", ""),
            message=message
        )
        logger.info(f"""
    🚨 Processing Alert:
    - User: {user_name}
    - Spot: {spot_name}
    - Time: {compliant_time_iso}
    - Task ID: {self.request.id}
    """)
        redis.setex(lock_key, 86400, "sent")  # 24h lock
    except Exception as e:
        logger.error(f"Failed alert for {user_number}: {str(e)}")
        redis.delete(lock_key)
        raise
        self.retry(exc=e, countdown=300, max_retries=3)
          # Retry every 5 minutes