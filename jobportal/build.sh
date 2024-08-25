#!/bin/bash


# This script will build the docker image from Dockerfile in the present working directory

# First, let's build the image from Dockerfile

echo "******************************"
echo "Building Image from Dockerfile"
echo "******************************"

repo_name=hikmatmarwat/job_portal

tagname=simple_app
tagno=1.4
docker build -t $tagname:$tagno .

# Tagging local image

docker tag $tagname:$tagno $repo_name:$tagno
