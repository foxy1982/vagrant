#!/bin/bash

wget -P ~ https://releases.hashicorp.com/packer/0.8.6/packer_0.8.6_linux_amd64.zip
apt-get -y install unzip
unzip ~/packer_0.8.6_linux_amd64.zip -d /opt/packer

echo 'export PATH=/opt/packer:$PATH' >> /etc/profile
