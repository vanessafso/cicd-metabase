#!/bin/bash
sudo apt-get update
sudo apt-get install -y apache2
echo 'Hello SRE' > /var/www/html/index.html
service httpd start 

# Instalação docker

sudo apt update -y
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs)  stable"
sudo apt update -y
sudo apt-get install docker-ce -y 
sudo systemctl start docker
sudo systemctl enable docker
sudo groupadd docker
sudo usermod -aG docker ubuntu
sudo docker pull nginx:latest
sudo docker run --name mynginx1 -p 80:80 -d nginx
