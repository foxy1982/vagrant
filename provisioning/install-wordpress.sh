#!/bin/bash

add-apt-repository "deb http://us.archive.ubuntu.com/ubuntu/ saucy universe multiverse"
add-apt-repository "deb http://us.archive.ubuntu.com/ubuntu/ saucy-updates universe multiverse"
apt-get update

apt-get -y install wordpress

ln -s /usr/share/wordpress /var/www/html/wordpress

debconf-set-selections <<< 'mysql-server mysql-server/root_password password password'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password password'
apt-get -y install mysql-server

gzip -d /usr/share/doc/wordpress/examples/setup-mysql.gz

bash /usr/share/doc/wordpress/examples/setup-mysql -n wordpress localhost
#bash /usr/share/doc/wordpress/examples/setup-mysql -n wordpress_mydomain_org wordpress.mydomain.org

#/etc/init.d/apache2 restart

exit 0