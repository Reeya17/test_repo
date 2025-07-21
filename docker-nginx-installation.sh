#!/bin/bash
# This script installs Docker and Nginx, pulls the latest Nginx image,
# and runs a container with a volume mounted to serve static content.
apt-get update -y
mkdir -p /home/azureuser/HelloWorld
cd /home/azureuser/HelloWorld
git clone https://github.com/Reeya17/test_repo
apt-get install docker.io -y
systemctl start docker.service
systemctl enable docker.service
docker pull nginx:latest
docker images
docker run --restart unless-stopped --name HelloWorld -p 80:80 -v /home/zureuser/HelloWorld/test_repo/:/usr/share/nginx/html -d nginx:latest
docker ps -a
curl http://localhost