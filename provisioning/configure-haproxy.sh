#!/bin/bash

apt-get -y install haproxy
cp /vagrant/haproxy.cfg /etc/haproxy/haproxy.cfg
sed -i -e 's/ENABLED=0/ENABLED=1/' /etc/default/haproxy
service haproxy restart

exit 0