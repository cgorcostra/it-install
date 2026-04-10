#!bin/bash

sudo apt update -y

sudo apt install software-properties-common -y
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y

ansible-galaxy install -r requirements.yml
ansible-playbook -i ./inventory/hosts.ini main.yml -K
