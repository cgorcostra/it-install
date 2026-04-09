#!bin/bash

sudo apt update -y
sudo apt install ansible -y

ansible-galaxy install -r requirements.yml
ansible-playbook -i ./inventory/hosts.ini main.yml --ask-become-pass