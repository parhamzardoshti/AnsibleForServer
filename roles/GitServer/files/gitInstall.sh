#!/bin/bash
##
yum install -y libcurl-devel.x86_64
sleep 20

yum groupinstall -y "Development Tools"
sleep 20

yum install -y gettext-devel openssl-devel perl-CPAN perl-devel zlib-devel
sleep 15

wget https://github.com/git/git/archive/v2.26.2.tar.gz -O git.tar.gz
sleep 15

tar -zxf git.tar.gz && cd git-* && make configure && ./configure --prefix=/usr/local && make install 

sleep 5


