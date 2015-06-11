#!/bin/bash

aptitude install -y build-essential zip vim wget

mkdir -p /var/www/
cd /var/www/

wget https://ghost.org/zip/ghost-latest.zip
unzip -d ghost ghost-latest.zip

cd ghost/
npm install --production

exit 0