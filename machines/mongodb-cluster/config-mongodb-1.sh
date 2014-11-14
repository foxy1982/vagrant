hostname "mongo1"
echo "mongo1" > /etc/hostname
echo "192.168.64.21 mongo1" >> /etc/hosts
echo "192.168.64.22 mongo2" >> /etc/hosts
echo "192.168.64.23 mongo3" >> /etc/hosts

service mongod stop
cp -f /vagrant/mongodb.conf.1 /etc/mongod.conf
service mongod start

sleep 10

mongo 192.168.64.21 <<EOF
rs.initiate()
EOF

echo "Waiting a bit for replica init..."
sleep 10

mongo 192.168.64.21 <<EOF
rs.add("mongo2")
rs.add("mongo3")
rs.conf()
EOF