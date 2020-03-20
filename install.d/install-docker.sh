#!/bin/bash
APT_CMD="sudo apt install -y"

# Repogitory preparation
APT_CMD \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add 
sudo apt-key fingerprint 0EBFCD8
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Install Docker community  
sudo apt update  
APT_CMD docker-ce docker-ce-cli containerd.io