#!/bin/bash
APT_CMD="sudo apt install -y"

# fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update 
$APT_CMD fish