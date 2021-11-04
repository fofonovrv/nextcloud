#!/bin/bash
echo "Start deploying NextCloud"
# https://rtfm.co.ua/nextcloud-zapusk-v-docker-compose-na-debian-s-ssl-ot-lets-encrypt/

sudo apt-get update -y
sudo apt-get upgrade -y
echo "Installing packages"
sudo apt-get instal -y lynx, net-tools

echo "Installing Docker"
curl -fsSL test.docker.com -o get-docker.sh && sh get-docker.sh
sudo usermod -aG docker $USER 
export DOCKER_CLI_EXPERIMENTAL=enabled

echo "Installing pip, Docker-compose"
sudo apt install -y pip
sudo pip3 install docker-compose

mkdir nextcloud
cd nextcloud/
mkdir -p nginx/{certs,vhost.d,html,conf.d}
mkdir mysql
mkdir -p app/{config,custom_apps,data,themes,html}
echo "client_max_body_size 5000M;" > nginx/conf.d/max_body_size.conf

echo "Deploying docker-compose.yml"
sudo docker-compose up -d
echo "Complete!"
