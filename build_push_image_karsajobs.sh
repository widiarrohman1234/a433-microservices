# build image dengan nama karsajobs:latest
docker build -t karsajobs:latest . 

# login ke docker hub
docker login 

# tag image dengan nama widiarrohman/karsajobs:latest
docker tag karsajobs:latest widiarrohman/karsajobs:latest

# push image ke docker hub
docker push widiarrohman/karsajobs:latest

# cara menjalankan file build_push_image_karsajobs.sh
# chmod +x build_push_image_karsajobs.sh
# ./build_push_image_karsajobs.sh

# cara membuat container dari image ini
# docker run -d -p 8080:8080 widiarrohman/karsajobs:latest



