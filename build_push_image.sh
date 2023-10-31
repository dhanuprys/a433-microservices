docker build -t item-app:v1 .
docker images
docker tag item-app:v1 dhanuprys/item-app:v1
docker rmi item-app:v1

git add .
git commit -m "Update"
git push -u origin proyek-pertama