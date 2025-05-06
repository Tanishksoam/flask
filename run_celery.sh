#!/bin/bash

# Load environment variables
export $(grep -v '^#' .env | xargs)

# Run Celery with proper logging
celery -A tasks worker --loglevel=INFO --beat --pool=solo > celery.log 2>&1 &

echo "Celery worker started. Logs are being written to celery.log"
