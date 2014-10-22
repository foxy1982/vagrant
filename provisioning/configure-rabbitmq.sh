#!/bin/bash

rabbitmqctl stop_app
rm -rf /var/lib/rabbitmq/mnesia
echo 'ILIKERABBITS' > /var/lib/rabbitmq/.erlang.cookie
rabbitmqctl start_app

exit 0