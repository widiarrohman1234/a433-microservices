#!/bin/bash

# Nama Docker image untuk backend
IMAGE_NAME="widiarrohman/order-service:latest"

# Build Docker image dari Dockerfile
docker build -t $IMAGE_NAME .

# jalankan dulu di terminal
# export PASSWORD_DOCKER_HUB=<password_Anda>

# Login ke Docker Hub dengan menggunakan environment variable
echo $PASSWORD_DOCKER_HUB | docker login -u widiarrohman --password-stdin

# tag image dengan nama widiarrohman/order-service:latest
docker tag order-service:latest widiarrohman/order-service:latest

# Push image ke Docker Hub
docker push $IMAGE_NAME

# Logout dari Docker Hub
docker logout

# cara menjalankan file build_push_image_order.sh
# chmod +x build_push_image_order.sh
# ./build_push_image_order.sh

# cara membuat container dari image ini
# docker run -d -p 8080:8080 widiarrohman/order-service:latest