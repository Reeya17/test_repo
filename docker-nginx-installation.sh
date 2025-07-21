apt-get install docker.io -y
systemctl start docker.service
systemctl enable docker.service
docker pull nginx:latest
docker images
docker run --restart unless-stopped --name HelloWorld -p 80:80 -v /home/azureuser/HelloWorld/test_repo/:/usr/share/nginx/html -d nginx:latest