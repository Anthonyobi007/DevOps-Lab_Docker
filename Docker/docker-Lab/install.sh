#!/bin/bash
# docker install
sudo yum update -y
sudo yum install docker -y
sudo usermod -aG docker ec2-user
sudo service docker start
sudo systemctl enable docker 

#install git
sudo yum install git -y
# install wget
sudo yum install wget -y
echo export PS1="\e[1;32m\u@\h \w$ \e[m"
#install docker compose
sudo curl -L https://github.com/docker/compose/releases/download/1.20.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
