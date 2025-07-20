apt-get install docker.io -y
systemctl enable docker.service
systemctl start docker.service
docker pull nginx:latest
docker images
