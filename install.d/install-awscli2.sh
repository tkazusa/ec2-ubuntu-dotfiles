#!/bin/bash

mkdir .awscli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o ".awscli/awscliv2.zip"
unzip .awscli/awscliv2.zip -d .awscli
sudo .awscli/aws/install
export PATH="$PATH:/home/${USER}/.awscli/aws