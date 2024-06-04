#!/bin/sh -e

export IMAGE_NAME=jam-py

export DOCKER_SCAN_SUGGEST=false

docker build -t $IMAGE_NAME .

IMAGE_ID=`docker image ls | grep $IMAGE_NAME | awk '{ print $3 }' | head -n 1`
docker tag $IMAGE_ID registry.tools.wareld.com/$IMAGE_NAME
docker push registry.tools.wareld.com/$IMAGE_NAME
