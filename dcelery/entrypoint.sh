#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Echo a message indicating the start of database migrations
echo "Apply database migrations"
# Apply database migrations using Django's manage.py
python manage.py migrate

# Execute the command passed as arguments to the script
exec "$@"