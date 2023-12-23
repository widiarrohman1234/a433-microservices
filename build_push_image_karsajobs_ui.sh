#!/bin/bash

# Nama Docker image untuk frontend
IMAGE_NAME="widiarrohman/karsajobs-ui:latest"

# Build Docker image dari Dockerfile
docker build -t $IMAGE_NAME .

# Login ke Docker Hub
# docker login -u <USERNAME> -p <PASSWORD>

# jalankan dulu di terminal
# export PASSWORD_DOCKER_HUB=<password_Anda>

# Login ke Docker Hub dengan menggunakan environment variable
echo $PASSWORD_DOCKER_HUB | docker login -u widiarrohman --password-stdin

# tag image dengan nama widiarrohman/karsajobs-ui:latest
docker tag karsajobs-ui:latest widiarrohman/karsajobs-ui:latest

# Push image ke Docker Hub
docker push $IMAGE_NAME

# Logout dari Docker Hub
docker logout

# cara menjalankan file build_push_image_karsajobs_ui.sh
# chmod +x build_push_image_karsajobs_ui.sh
# ./build_push_image_karsajobs_ui.sh

# cara menjalankan image karsajobs-ui:latest
# docker run -d -p 8000:8000 widiarrohman/karsajobs-ui:latest


