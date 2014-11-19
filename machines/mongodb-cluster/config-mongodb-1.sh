hostname "mongo1"
echo "mongo1" > /etc/hostname
echo "192.168.64.21 mongo1" >> /etc/hosts
echo "192.168.64.22 mongo2" >> /etc/hosts
echo "192.168.64.23 mongo3" >> /etc/hosts

service mongod stop
cp -f /vagrant/mongodb.conf /etc/mongod.conf
cp /vagrant/mongo.key /etc/mongo.key
chown mongodb /etc/mongo.key
chmod 700 /etc/mongo.key
service mongod start

mongo /vagrant/mongodb-sa.js

service mongod stop
cat /vagrant/mongodb-2.conf | tee -a /etc/mongod.conf
service mongod start

sleep 10

mongo admin -u superuser -p password <<EOF
rs.initiate()
EOF

echo "Waiting a bit for replica init..."
sleep 10

mongo admin -u superuser -p password <<EOF
rs.add("mongo2")
rs.add("mongo3")
rs.conf()
EOF