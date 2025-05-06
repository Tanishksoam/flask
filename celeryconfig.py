# celeryconfig.py
from celery.schedules import crontab

beat_schedule = {
    'test-whatsapp-alert': {
        'task': 'tasks.test_whatsapp_alert',  # Match the updated task name
        'schedule': crontab(minute='*/5'),    # Every 5 minutes
    }
}

# Redis configuration
broker_url = 'redis://localhost:6379/0'
result_backend = 'redis://localhost:6379/0'

# Timezone settings
timezone = 'UTC'

# Worker settings
worker_proc_alive_timeout = 30
worker_max_tasks_per_child = 100