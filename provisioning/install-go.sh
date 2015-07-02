#!/bin/bash

wget https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz

tar -C /opt -xzf go1.4.2.linux-amd64.tar.gz

echo "export GOROOT=/opt/go" >> /etc/profile
echo "export PATH=$PATH:/opt/go/bin" >> /etc/profile
