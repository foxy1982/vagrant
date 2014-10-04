#!/bin/bash

# Download, build and install mono develop and fsharp
git clone --recursive -b monodevelop-5.0 https://github.com/mono/monodevelop.git
cd monodevelop
./configure --prefix=/usr --profile=stable
make
make install

exit 0