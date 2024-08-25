#!/bin/bash


# This script is deploying my php laravel application on remote server
# along with some thridy party application/containers like mysql & phpmyadmin
# For this setup, we will use docker compose run a stack of related software/containers.

echo job_portal > /tmp/.creds
echo $BUILD_TAG >> /tmp/.creds
echo $PASS >> /tmp/.creds



echo "Copying necessary files to remote server"
scp -i /opt/prod /tmp/.creds admin@192.168.232.133:/tmp/.creds
scp -i /home/admin/jenkins-data/prod -r db_data .env docker-compose.yaml admin@192.168.232.133:/home/admin/maven

scp -i /opt/prod launch_app admin@192.168.232.133:/tmp/launch_app
ssh -i /opt/prod admin@192.168.232.133 "/tmp/launch_app"


echo "Files copied successfully, now starting the application on remote server"


ssh -i /opt/prod admin@192.168.232.133 "curl http://192.168.232.133:80" > /dev/null

# Check if site is running or not

if [ $? -eq 0 ]; then
    echo "Site is Running."
else
    echo "Site is not Running."
fi




