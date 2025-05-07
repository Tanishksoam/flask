# celeryconfig.py
from celery.schedules import crontab

beat_schedule = {
    'daily-surf-check': {
        'task': 'tasks.schedule_daily_check',
        'schedule': crontab(hour=15, minute=10),  # Daily at 6AM UTC
        # 'schedule': crontab(minute='*/5'),  # Daily at 6AM UTC
    }
}

# Redis configuration
broker_url = 'redis://localhost:6379/0'
result_backend = 'redis://localhost:6379/0'

timezone = 'UTC'


worker_max_tasks_per_child = 100
task_track_started = True


worker_redirect_stdouts_level = 'INFO'
loglevel = 'INFO'