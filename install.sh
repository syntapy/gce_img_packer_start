#!/bin/bash -x

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get autoremove -y

sudo apt-get install vim

sudo sh -c "echo 'set -o vi' >> /etc/bash.bashrc"
