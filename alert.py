import os
import time
import schedule
from sqlfunctions import get_all_users, get_surf_conditions
from apis import TwilioClient

def check_conditions():
    twilio = TwilioClient()
    users = get_all_users()
    
    for user in users:
        conditions = get_surf_conditions(user['favorite_surfspots'])
        if conditions and meets_preferences(user, conditions):
            send_alert(twilio, user, conditions)

def meets_preferences(user, conditions):
    checks = [
        (user['swelldirection_min'], user['swelldirection_max'], conditions['swell_direction']),
        (user['swellheight_min'], user['swellheight_max'], conditions['swell_height']),
        (user['swellperiod_min'], user['swellperiod_max'], conditions['swell_period']),
        (user['windspeed_min'], user['windspeed_max'], conditions['wind_speed'])
    ]
    return all(min <= val <= max for min, max, val in checks if min is not None and max is not None)

def send_alert(twilio, user, conditions):
    message = (
        f"🏄 SURF ALERT! {conditions['spot_name']}\n"
        f"🌊 Swell: {conditions['swell_height']}m @ {conditions['swell_direction']}°\n"
        f"⏳ Period: {conditions['swell_period']}s\n"
        f"🌬 Wind: {conditions['wind_speed']}m/s @ {conditions['wind_direction']}°\n"
        f"🔗 Details: {conditions['url']}"
    )
    twilio.send_whatsapp(user['phone'].split(':')[-1], message)

if __name__ == "__main__":
    schedule.every(15).minutes.do(check_conditions)
    while True:
        schedule.run_pending()
        time.sleep(1)