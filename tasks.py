from celery import Celery
from datetime import datetime, timedelta
from apis import fetch_marine_weather
from utils import check_hourly_conditions
from sqlfunctions import get_all_users, get_surf_spot_details
from twilio_config import TwilioClient
import logging

# Initialize Celery
celery = Celery("tasks", broker="redis://localhost:6379/0")
celery.conf.timezone = 'UTC'

# Set up logging
logger = logging.getLogger(__name__)
twilio_client = TwilioClient()

@celery.task(bind=True)
def test_whatsapp_alert(self):
    """Test task for WhatsApp alerts"""
    try:
        test_number = "+919897283397"  # Raw number without 'whatsapp:' prefix
        test_message = f"🔧 TEST ALERT: System working at {datetime.now().isoformat()}"
        
        logger.info(f"Sending test WhatsApp to {test_number}")
        twilio_client.send_whatsapp(test_number, test_message)
        
        return {'status': 'success', 'timestamp': datetime.now().isoformat()}
        
    except Exception as e:
        logger.error(f"Test alert failed: {str(e)}")
        self.retry(countdown=2 ** self.request.retries, max_retries=3)

@celery.task
def schedule_daily_check():
    """Main surf check scheduled task"""
    logger.info("⏰ Starting daily surf checks")
    users = get_all_users()
    
    for user in users:
        for spot_id in user.get("surf_spots", []):
            spot = get_surf_spot_details(spot_id)
            if not spot or 'latitude' not in spot or 'longitude' not in spot:
                continue

            hourly_forecast = fetch_marine_weather(spot['latitude'], spot['longitude'])
            if not hourly_forecast:
                continue

            for hour_data in hourly_forecast:
                if check_hourly_conditions(hour_data, user):
                    compliant_time = datetime.fromisoformat(hour_data["time"].replace("Z", "+00:00"))
                    alert_time = compliant_time - timedelta(hours=3)
                    
                    if alert_time > datetime.now(alert_time.tzinfo):
                        send_alert.apply_async(
                            args=[user["user_number"], user["user_name"], spot['spot_name'], compliant_time.isoformat()],
                            eta=alert_time
                        )
                        break

@celery.task(bind=True)
def send_alert(self, user_number, user_name, spot_name, compliant_time_iso):
    """Send WhatsApp alert to user"""
    try:
        # Clean number format (remove existing 'whatsapp:' prefix if present)
        clean_number = user_number.replace("whatsapp:", "")
        
        compliant_time = datetime.fromisoformat(compliant_time_iso)
        message = (
            f"🌊 Surf Alert!\nHey {user_name}, conditions look great at {spot_name}!\n"
            f"Best time: {compliant_time.strftime('%Y-%m-%d %H:%M:%S')}"
        )
        
        logger.info(f"Sending alert to {clean_number}")
        twilio_client.send_whatsapp(clean_number, message)
        
    except Exception as e:
        logger.error(f"Alert failed for {clean_number}: {str(e)}")
        self.retry(exc=e, countdown=60, max_retries=3)