#!/bin/bash

apt-get -y install automake autoconf
apt-get -y install git
apt-get -y install libgtk2.0-dev
apt-get -y install gtk-sharp2
apt-get -y install gnome-sharp2
apt-get -y install mono-complete

# Download, build and install mono develop and fsharp
git clone --recursive -b monodevelop-5.0 https://github.com/mono/monodevelop.git
cd monodevelop
./configure --prefix=/usr --profile=stable
make
make install

exit 0