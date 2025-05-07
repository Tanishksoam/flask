# # In Python shell
# from twilio_config import TwilioClient
# twilio = TwilioClient()

# # Test with your number (include country code)
# twilio.send_sms("+919897283397", "🌊 Direct SMS Test - Please reply if received!")

from tasks import schedule_daily_check
schedule_daily_check.delay()
