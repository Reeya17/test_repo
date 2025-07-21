#!/bin/bash
# This script installs Docker and Nginx, pulls the latest Nginx image,
# and runs a container with a volume mounted to serve static content.
apt-get update -y
apt-get install docker.io -y
systemctl start docker.service
systemctl enable docker.service
docker pull nginx:latest
docker images
docker stop HelloWorld
docker rm HelloWorld
docker run --restart unless-stopped --name HelloWorld -p 80:80 -v /home/azureuser/HelloWorld/test_repo/:/usr/share/nginx/html -d nginx:latest
docker ps -a
sleep 5
curl http://localhost