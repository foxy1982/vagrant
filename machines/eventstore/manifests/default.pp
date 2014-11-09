exec { "download-eventstore": 
    command => "/usr/bin/wget http://download.geteventstore.com/binaries/EventStore-OSS-Linux-v3.0.0.tar.gz",
    cwd => "/home/vagrant/",
    creates => "/home/vagrant/EventStore-OSS-Linux-v3.0.0.tar.gz",
    before => Exec["unpack-eventstore"]
}

exec { "unpack-eventstore":
	command => "/bin/tar xzf /home/vagrant/EventStore-OSS-Linux-v3.0.0.tar.gz",
	subscribe => Exec["download-eventstore"],
	refreshonly => true
}
