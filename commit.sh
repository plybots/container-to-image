#!/bin/bash

# Check if the required parameters are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <container_name> <registry_url>"
    exit 1
fi

# Assign the parameters to variables
container_name=$1
registry_url=$2
existing_container=$3

# Get the container ID
container_id=$(docker ps -aqf "name=$existing_container")

# Check if the container exists
if [ -z "$container_id" ]; then
    echo "Container '$container_name' does not exist."
    exit 1
fi

# Create an image from the container
image_name="$container_name:latest"
docker commit "$container_id" "$image_name"

# Tag the image with the registry URL
tagged_image="$registry_url/$image_name"
docker tag "$image_name" "$tagged_image"

# Push the image to the registry
docker push "$tagged_image"

echo "Image '$tagged_image' has been created and uploaded to the Docker registry."

