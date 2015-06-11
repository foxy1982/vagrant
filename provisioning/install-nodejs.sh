#!/bin/bash

apt-get update
apt-get -y install git-core curl build-essential openssl libssl-dev

git clone https://github.com/joyent/node.git
cd node

./configure
make
make install

exit 0