#!/bin/bash


# This script will build the docker image from Dockerfile in the present working directory

# First, let's build the image from Dockerfile

echo "******************************"
echo "Building Image from Dockerfile"
echo "******************************"


docker build -t job_portal:$BUILD_TAG ./jobportal

echo "Image build successfully..."


