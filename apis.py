from twilio.rest import Client
import os

class TwilioClient:
    def __init__(self):
        self.client = Client(os.getenv("TWILIO_ACCOUNT_SID"), 
                           os.getenv("TWILIO_AUTH_TOKEN"))
        self.number = f"whatsapp:{os.getenv('TWILIO_WHATSAPP_NUMBER')}"
    
    def send_whatsapp(self, to, body):
        self.client.messages.create(
            body=body,
            from_=self.number,
            to=f"whatsapp:{to}"
        )