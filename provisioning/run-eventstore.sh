#!/bin/bash

 cd /home/vagrant/EventStore-OSS-Linux-v3.0.0/
 ./run-node.sh --ext-ip 0.0.0.0 --http-prefixes "http://*:2113/" &

exit 0