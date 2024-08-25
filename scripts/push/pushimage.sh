#!/bin/bash

# This script is goint to push image to the Docker hub!!!!

echo "**************************"
echo "Pushing Image to Dockerhub"
echo "**************************"

echo "loging to docker hub"

IMAGE=job_portal

user=hikmatmarwat

docker login -u $user -p $PASS

echo "*** Tagging image ***"

docker tag $IMAGE:$BUILD_TAG $user/$IMAGE:$BUILD_TAG

echo "*** Pushing image ***"

docker push $user/$IMAGE:$BUILD_TAG
