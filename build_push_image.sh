# PART OF DICODING SUBMISSION

# Build project menjadi docker image
docker build -t item-app:v1 .

# Menampilkan daftar image yang tersedia di lokal
docker images

# Menyalin (retag) docker image yan sudah dibuat menjadi sesuai dengan
# format Docker Hub
docker tag item-app:v1 dhanuprys/item-app:v1

# Menghapus image sebelumnya
docker rmi item-app:v1

# Login ke akun DockerHub
echo $PASSWORD_DOCKER_HUB | docker login -u dhanuprys --password-stdin

# Mengunggah image yang sudah dibuat ke Docker Hub
docker push dhanuprys/item-app:v1