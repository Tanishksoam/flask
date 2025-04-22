from twilio.rest import Client
import os

class TwilioClient:
    def __init__(self):
        self.client = Client(os.getenv("TWILIO_ACCOUNT_SID"), 
                           os.getenv("TWILIO_AUTH_TOKEN"))
        self.number = f"whatsapp:{os.getenv('TWILIO_WHATSAPP_NUMBER')}"


    def send_whatsapp(self, to, body, actions=None):
        message_params = {
            'body': body,
            'from_': self.number,
            'to': f"whatsapp:{to}"
        }
        
        if actions:
            # Format: quick_reply:unique_id:ButtonText (max 3 buttons)
            message_params['persistent_action'] = [
                f"quick_reply:{idx+1}:{action}" 
                for idx, action in enumerate(actions[:3])  # Max 3 buttons
            ]
        
        self.client.messages.create(**message_params)