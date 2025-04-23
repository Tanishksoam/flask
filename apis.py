from twilio.rest import Client
import os
import json

class TwilioClient:
    def __init__(self):
        self.client = Client(os.getenv("TWILIO_ACCOUNT_SID"), 
                           os.getenv("TWILIO_AUTH_TOKEN"))
        self.number = f"whatsapp:{os.getenv('TWILIO_WHATSAPP_NUMBER')}"
    
    # Existing method (keep for regular messages)
    def send_whatsapp(self, to, body, actions=None):
        message_params = {
            'body': body,
            'from_': self.number,
            'to': f"whatsapp:{to}"
        }
        if actions:
            message_params['persistent_action'] = json.dumps([{
                "type": "quick_reply",
                "options": [
                    {"id": f"option_{idx+1}", "title": action}
                    for idx, action in enumerate(actions[:3])
                ]
            }])
        self.client.messages.create(**message_params)

    # NEW: Method for surf spot template
    def send_surfspots_template(self, to, spots):
        """Send WhatsApp template with surf spots"""
        variables = {}
        
        # Map first 5 spots to 10 variables (1-10)
        for idx, spot in enumerate(spots[:5]):
            variables[str(2*idx + 1)] = spot['name']  # Odd positions
            variables[str(2*idx + 2)] = str(spot['id'])  # Even positions
        
        self.client.messages.create(
            from_=self.number,
            to=f"whatsapp:{to}",
            content_sid='HXe03f2a1f9eb40552f689bcbaaa015dd5',  # Your template SID
            # content_variables=json.dumps(variables)
            content_variables='{"1": "Pipeline", "2": "123", "3": "Beach Break", "4": "456", "5": "Reef Point", "6": "789", "7": "Left Wall", "8": "101", "9": "Right Point", "10": "202"}'  # Example JSON string
        )