# build image dengan nama karsajobs:latest
docker build -t karsajobs:latest . || { echo 'docker build failed' ; exit 1; }

# login ke docker hub
docker login || { echo 'docker login failed' ; exit 1; }

# tag image dengan nama widiarrohman/karsajobs:latest
docker tag karsajobs:latest widiarrohman/karsajobs:latest || { echo 'docker tag failed' ; exit 1; }

# push image ke docker hub
docker push widiarrohman/karsajobs:latest || { echo 'docker push failed' ; exit 1; }

# cara menjalankan file build_push_image_karsajobs.sh
# chmod +x build_push_image_karsajobs.sh
# ./build_push_image_karsajobs.sh




