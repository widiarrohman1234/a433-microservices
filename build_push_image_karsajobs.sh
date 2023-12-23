#!/bin/bash

# Nama Docker image untuk backend
IMAGE_NAME="widiarrohman/karsajobs:latest"

# Build Docker image dari Dockerfile
docker build -t $IMAGE_NAME .

# Login ke Docker Hub
# docker login -u <USERNAME> -p <PASSWORD>

# jalankan dulu di terminal
# export PASSWORD_DOCKER_HUB=<password_Anda>

# Login ke Docker Hub dengan menggunakan environment variable
echo $PASSWORD_DOCKER_HUB | docker login -u widiarrohman --password-stdin

# tag image dengan nama widiarrohman/karsajobs:latest
docker tag karsajobs:latest widiarrohman/karsajobs:latest

# Push image ke Docker Hub
docker push $IMAGE_NAME

# Logout dari Docker Hub
docker logout

# cara menjalankan file build_push_image_karsajobs.sh
# chmod +x build_push_image_karsajobs.sh
# ./build_push_image_karsajobs.sh

# cara membuat container dari image ini
# docker run -d -p 8080:8080 widiarrohman/karsajobs:latest



