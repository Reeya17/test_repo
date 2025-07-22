# test_repo
This repository create a small web site that displays "Hello" on the first visit, and "World" on any subsequent visits.


**Steps to Redeploy:**

1.Execute the script main.azcli
```bash
bash main.azcli
```

Expected output : Resource Group and Azure VM will be created -  Also port 80 will be opened in VM using NSG rules to access the website.
2.   
```bash
ssh -i /home/riyar/.ssh/id_rsa $username@$ip
```
3. change to root user
```bash
sudo su
```
4. Clone the updated repository for first time setting:
```bash
mkdir -p /home/azureuser/HelloWorld
cd /home/azureuser/HelloWorld
git clone https://github.com/Reeya17/test_repo
```

5. Pull the updated repository for subsequent times:
```bash


cd /home/azureuser/HelloWorld/test_repo
git pull origin main
```

6. Execute docker-nginx-installation.sh
```bash
bash docker-nginx-installation.sh
```
Expected output : Nginx image will run on docker container with custom HTML web page mounted on container volume, port 80 of VM will me mapped with port 80 of container, container will be in running state.

To debug, use commands : 
```bash
docker logs --tail 100 <container_name>
docker exec -it <container_name> bash

```

Website pictures:


![Hello-First-Visit](https://github.com/user-attachments/assets/e0c06063-4b2c-4d9c-a294-80dd6703374a)

![world-first-visit-refresh](https://github.com/user-attachments/assets/2332d5c3-1914-4490-97f2-0d566f506567)

![world-subsequent-visit](https://github.com/user-attachments/assets/ba75a9e6-02f0-46b6-a282-e53032355ea7)
