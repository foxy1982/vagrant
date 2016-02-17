
cat /vagrant/TeamCity | tee -a /etc/default/TeamCity

cat /vagrant/teamcity.conf | tee -a /etc/init/teamcity.conf
cat /vagrant/teamcityagent.conf | tee -a /etc/init/teamcityagent.conf

service teamcity start
service teamcityagent start
