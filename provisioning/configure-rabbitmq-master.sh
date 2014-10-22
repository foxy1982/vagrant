#!/bin/bash

rabbitmqctl stop_app
echo 'ILIKERABBITS' > /var/lib/rabbitmq/.erlang.cookie
rabbitmqctl start_app

exit 0