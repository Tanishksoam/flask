import os
from twilio.rest import Client

class TwilioClient:
    def __init__(self):
        self.account_sid = os.getenv("TWILIO_ACCOUNT_SID")
        self.auth_token = os.getenv("TWILIO_AUTH_TOKEN")
        self.whatsapp_number = f"whatsapp:{os.getenv('TWILIO_WHATSAPP_NUMBER')}"
            
        self.client = Client(self.account_sid, self.auth_token)

    def send_whatsapp(self, to_number, message):
        """Send WhatsApp message using sandbox"""
        try:
            message = self.client.messages.create(
                body=message,
                from_=self.whatsapp_number,
                to=f"whatsapp:{to_number}"
            )
            return message.sid
        except Exception as e:
            print(f"WhatsApp Error: {str(e)}")
            raise
