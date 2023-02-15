#!/bin/bash
sudo yum -y install git 
sudo yum -y install docker
sudo git clone https://github.com/Maddalarajesh/dockerproject.git
sudo usermod -a -G docker ec2-user
sudo service docker start
sudo chkconfig docker on
sudo systemctl enable docker
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
cd dockerproject
sudo docker-compose up -d
