#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="farrukhkhalid/ml-microservice"

# Step 2:  
docker login -u "farrukhkhalid" -p "********"
docker tag ml-microservice $dockerpath


# Step 3:
# Push image to a docker repository
docker push $dockerpath
