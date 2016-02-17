#!/bin/bash

apt-get install libpcre3 libpcre3-dev zlib1g-dev libssl-dev

wget "http://luajit.org/download/LuaJIT-2.0.4.tar.gz"
tar -C /opt -xzf "LuaJIT-2.0.4.tar.gz"
cd /opt/LuaJIT-2.0.4
make
make install

wget "https://github.com/simpl/ngx_devel_kit/archive/v0.2.19.tar.gz"
tar -C /opt -xzf "v0.2.19.tar.gz"

wget "https://github.com/openresty/lua-nginx-module/archive/v0.9.16.tar.gz"
tar -C /opt -xzf "v0.9.16.tar.gz"


wget 'http://nginx.org/download/nginx-1.7.10.tar.gz'
tar -C /opt -xzvf nginx-1.7.10.tar.gz
cd /opt/nginx-1.7.10/

# tell nginx's build system where to find LuaJIT 2.0:
export LUAJIT_LIB=/usr/local/lib
export LUAJIT_INC=/usr/local/include/luajit-2.0

# Here we assume Nginx is to be installed under /opt/nginx/.
./configure --prefix=/opt/nginx \
        --with-ld-opt="-Wl,-rpath,/usr/local/lib" \
        --with-http_ssl_module
        --add-module=/opt/ngx_devel_kit-0.2.19 \
        --add-module=/opt/lua-nginx-module-0.9.16

make -j2
make install

wget 'https://github.com/cloudflare/lua-resty-cookie/archive/master.zip'
mkdir /opt/lua-resty-cookie
unzip -d /opt/lua-resty-cookie master.zip
