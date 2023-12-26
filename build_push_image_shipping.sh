#!/bin/bash

# Nama Docker image untuk backend
IMAGE_NAME="widiarrohman/shipping-service:latest"

# Build Docker image dari Dockerfile
docker build -t $IMAGE_NAME .

# Login ke Docker Hub
# docker login -u <USERNAME> -p <PASSWORD>

# jalankan dulu di terminal
# export PASSWORD_DOCKER_HUB=<password_Anda>

# Login ke Docker Hub dengan menggunakan environment variable
echo $PASSWORD_DOCKER_HUB | docker login -u widiarrohman --password-stdin

# tag image dengan nama widiarrohman/shipping-service:latest
docker tag shipping-service:latest widiarrohman/shipping-service:latest

# Push image ke Docker Hub
docker push $IMAGE_NAME

# Logout dari Docker Hub
docker logout

# cara menjalankan file build_push_image_shipping-service.sh
# chmod +x build_push_image_shipping-service.sh
# ./build_push_image_shipping-service.sh

# cara membuat container dari image ini
# docker run -d -p 3001:3001 widiarrohman/shipping-service:latest