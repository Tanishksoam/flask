

import json

class DummyMessages:
    def create(self, from_, to, content_sid, content_variables):
        print(f"Message sent from {from_} to {to}")
        print("Template SID:", content_sid)
        print("Content variables:", content_variables, type(content_variables))

class DummyClient:
    def __init__(self):
        self.messages = DummyMessages()

class SurfAlertSender:
    def __init__(self, client, number):
        self.client = client
        self.number = number

    def send_surfspots_template(self, to, spots):
        """Send WhatsApp template with surf spots"""
        variables = {}

        # Map first 5 spots to 10 variables (1-10)
        for idx, spot in enumerate(spots[:5]):
            variables[str(2*idx + 1)] = spot['name']  # Odd positions
            variables[str(2*idx + 2)] = str(spot['id'])  # Even positions

        # Dump variables to JSON string
        variables_json = json.dumps(variables)
        print("JSON Variables:", type(variables_json))

        # Send message using (mocked) WhatsApp client
        self.client.messages.create(
            from_=self.number,
            to=f"whatsapp:{to}",
            content_sid='HXe03f2a1f9eb40552f689bcbaaa015dd5',  # Your template SID
            content_variables=content_variables='{"1": "Pipeline", "2": "123", "3": "Beach Break", "4": "456", "5": "Reef Point", "6": "789", "7": "Left Wall", "8": "101", "9": "Right Point", "10": "202"}'
        )


def main():
    # Assume we have these surf spots
    spots = [
        {'name': 'Pipeline',    'id': 123},
        {'name': 'Beach Break', 'id': 456},
        {'name': 'Reef Point',  'id': 789},
        {'name': 'Left Wall',   'id': 101},
        {'name': 'Right Point', 'id': 202},
    ]

    # Initialize with a dummy client; replace with real Twilio client in production
    client = DummyClient()
    number = 'whatsapp:+14155238886'  # Your Twilio WhatsApp number
    sender = SurfAlertSender(client, number)

    # Send to a test recipient
    sender.send_surfspots_template('+1234567890', spots)

if __name__ == '__main__':
    main()