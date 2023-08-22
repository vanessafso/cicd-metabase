#!/bin/bash
sudo apt-get update
#sudo apt-get install -y apache2
#echo 'Hello SRE' > /var/www/html/index.html
#service httpd start 

# Instalação docker
sudo curl -fsSL https://get.docker.com -o install-docker.sh
cat install-docker.sh
sudo sh install-docker.sh
sudo chmod 666 /var/run/docker.sock

sudo docker run -d -p 80:3000 --name metabase metabase/metabase
