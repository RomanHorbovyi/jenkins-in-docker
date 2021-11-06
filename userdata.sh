#!/bin/bash

apt update
apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt update
apt-cache policy docker-ce
apt install -y docker-ce
systemctl status docker
cd /jenkins-in-docker
docker-compose up -d

# Specify this as user data for the VM instance
#
# git clone https://github.com/RomanHorbovyi/jenkins-in-docker.git
# chmod +x /jenkins-in-docker/userdata.sh
# ./userdata.sh