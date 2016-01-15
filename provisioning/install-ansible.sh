#!/bin/bash

apt-get -y install software-properties-common

apt-add-repository ppa:ansible/ansible

apt-get update
apt-get -y install ansible

echo "192.168.64.11 ansible-target" >> /etc/hosts
mv /etc/ansible/hosts /etc/ansible/hosts.orig
echo "[test]" > /etc/ansible/hosts
echo "ansible-target" >> /etc/ansible/hosts
su vagrant -c "ssh-keygen -f ~/.ssh/id_rsa -t rsa -N ''"
su vagrant -c "sshpass -p 'vagrant' ssh-copy-id -o StrictHostKeyChecking=no -i ~/.ssh/id_rsa vagrant@ansible-target"

exit 0
