# build image dengan nama item-app dan versi v.1
docker build -t item-app:v1

# menampilkan list images
docker images

# membuat tag
docker tag item-app:v1 widiarrohman/item-app:v1

# login ke docker hub
docker login

# push ke docker hub
docker push widiarrohman/item-app:v1
