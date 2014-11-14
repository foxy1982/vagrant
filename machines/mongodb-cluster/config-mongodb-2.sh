hostname "mongo2"
echo "mongo2" > /etc/hostname
echo "192.168.64.22 mongo2" >> /etc/hosts
echo "192.168.64.21 mongo1" >> /etc/hosts
echo "192.168.64.23 mongo3" >> /etc/hosts

service mongod stop
cp -f /vagrant/mongodb.conf.2 /etc/mongod.conf
service mongod start
