#!/bin/bash

rabbitmqctl stop_app
rabbitmqctl join_cluster rabbit@rabbit1 --ram
rabbitmqctl start_app

exit 0