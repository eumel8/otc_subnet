#!/bin/sh

echo "SCENARIO 1: create Subnet"
ansible-playbook test.yml -e "subnet_name=ansible-subnet02 localaction=create" || exit 1
echo "SCENARIO 2: show Subnet"
ansible-playbook test.yml -e "subnet_name=ansible-subnet02 localaction=show" || exit 1
echo "SCENARIO 3: list Subnet"
ansible-playbook test.yml -e "localaction=list" || exit 1
echo "SCENARIO 4: delete Subnet"
ansible-playbook test.yml -e "subnet_name=ansible-subnet02 localaction=delete" || exit 1
