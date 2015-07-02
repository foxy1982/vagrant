#!/bin/bash

wget https://download.elasticsearch.org/logstash/logstash/logstash-1.5.0.tar.gz

tar -C /opt -xzf logstash-1.5.0.tar.gz

echo "export PATH=$PATH:/opt/logstash/bin" >> /etc/profile
