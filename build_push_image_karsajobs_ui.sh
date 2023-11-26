# build image dengan nama karsajobs-ui:latest
docker build -t karsajobs-ui:latest . || { echo 'docker build failed' ; exit 1; }

# login ke docker hub
docker login || { echo 'docker login failed' ; exit 1; }

# tag image dengan nama widiarrohman/karsajobs-ui:latest
docker tag karsajobs-ui:latest widiarrohman/karsajobs-ui:latest || { echo 'docker tag failed' ; exit 1; }

# push image ke docker hub
docker push widiarrohman/karsajobs-ui:latest || { echo 'docker push failed' ; exit 1; }

# cara menjalankan file build_push_image_karsajobs_ui.sh
# chmod +x build_push_image_karsajobs_ui.sh
# ./build_push_image_karsajobs_ui.sh




