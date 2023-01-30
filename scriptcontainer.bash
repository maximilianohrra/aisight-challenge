#!/bin/bash

# Get the input value "name"
name=$1

# Run the "docker ps" command and filter only the names of the containers containing the "name" value
containers=$(docker ps --format "{{.Names}}" | grep "$name")

# If no containers containing the "name" value are found, skip a line and exit the script
if [ -z "$containers" ]; then
  echo "new docker compose running..."
  exit 0
fi

# Stop container & remove img
for container in $containers
do
  image=$(docker inspect --format "{{.Image}}" "$container")
  docker-compose  -f docker-compose-"$container".yml  down
  docker rmi "$image"
done
