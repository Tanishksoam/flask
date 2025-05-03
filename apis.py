from twilio.rest import Client
import os
import json
import requests

STORMGLASS_API_URL = "https://api.stormglass.io/v2/weather/point"
STORMGLASS_API_KEY = "c98a75e6-064d-11f0-95f7-0242ac130003-c98a765e-064d-11f0-95f7-0242ac130003"

def fetch_marine_weather(latitude, longitude):
    """Fetches marine weather data from Stormglass API for 72 hours using NOAA sources only."""
    params = {
        "lat": latitude,
        "lng": longitude,
        "params": ",".join([
            "swellHeight", "swellPeriod", "swellDirection",
            "secondarySwellHeight", "secondarySwellPeriod", "secondarySwellDirection",
            "windSpeed", "windDirection"
        ])
    }

    headers = {"Authorization": STORMGLASS_API_KEY}

    try:
        response = requests.get(
            STORMGLASS_API_URL,
            params=params,
            headers=headers,
            timeout=10
        )

        if response.status_code == 200:
            data = response.json()
            hours_data = data.get("hours", [])

            all_weather_data = []  # Store details for all 72 hours

            for hour in hours_data[:72]:  # Iterate over first 72 hours
                weather_details = {
                    "time": hour.get("time", ""),
                    "swell_wave_height": hour.get("swellHeight", {}).get("sg", 0),
                    "swell_wave_period": hour.get("swellPeriod", {}).get("sg", 0),
                    "swell_wave_direction": hour.get("swellDirection", {}).get("sg", 0),

                    "secondary_swell_height": hour.get("secondarySwellHeight", {}).get("sg", 0),
                    "secondary_swell_period": hour.get("secondarySwellPeriod", {}).get("sg", 0),
                    "secondary_swell_direction": hour.get("secondarySwellDirection", {}).get("sg", 0),

                    "wind_speed": hour.get("windSpeed", {}).get("sg", 0),
                    "wind_direction": hour.get("windDirection", {}).get("sg", 0),
                }

                all_weather_data.append(weather_details)  # Append to list

            return all_weather_data  # Return weather data for 72 hours

        print(f"⚠️ Stormglass API Error: {response.status_code} - {response.text}")
        return None

    except requests.exceptions.RequestException as e:
        print(f"⚠️ Stormglass API Request Failed: {e}")
        return None


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