#!bin/bash

ansible-galaxy install -r requirements.yml
ansible-playbook -i ./inventory/hosts.ini main.yml -K