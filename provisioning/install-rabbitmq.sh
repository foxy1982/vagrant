#!/bin/bash

apt-add-repository "deb http://www.rabbitmq.com/debian/ stable main"
apt-get update
apt-get -y install rabbitmq-server
rabbitmq-plugins enable rabbitmq_management
rabbitmqctl start_app

exit 0