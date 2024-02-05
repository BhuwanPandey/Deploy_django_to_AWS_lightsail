#!/bin/bash

# Change to the directory where your Django project resides
cd ~
cd Deploy_django_to_AWS_lightsail

# Define the path to the virtual environment for your Django project
VENV_PATH=env

# Activate the virtual environment
source $VENV_PATH/bin/activate

# Run Django migrations
echo "Django migrations"
python manage.py migrate

# Restart the Gunicorn service
echo "Restart the Gunicorn"
sudo service gunicorn restart

# Restart Nginx
echo "Restart Nginx"
sudo systemctl restart nginx
sudo service nginx restart
# Deactivate the virtual environment
deactivate

echo "Deployment completed"