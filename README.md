A collection of definitions for virtual machines for use with [Vagrant](http://www.vagrantup.com)

To use these you will need to install:

1. [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
2. [Vagrant](https://www.vagrantup.com/downloads.html)

Machine definitions are in the [machines](https://github.com/foxy1982/vagrant/tree/master/machines) folder.  The [provisioning](https://github.com/foxy1982/vagrant/tree/master/provisioning) folder contains a number of scripts that are used by the machines and could be used to build composite machines too (for example, one that installed Mono and Couchbase)

Most machines are Ubuntu-based with Unity installed, but the GUI has been disabled in the Vagrantfile.