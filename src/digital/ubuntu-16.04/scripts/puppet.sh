#!/bin/bash -eux

echo "==> Installing Puppet"
# wget https://gist.githubusercontent.com/narkisr/6097786/raw/puppet-preqs.sh
# chmod +x puppet-preqs.sh
# /bin/bash puppet-preqs.sh
if [ -f /etc/debian_version ]
then
  groupadd puppet
  apt-get install git ruby-dev ruby ruby-safe-yaml build-essential -y
fi

if cat /proc/version | grep Red
then
  groupadd puppet
  yum install git ruby.x86_64 ruby-devel.x86_64 rubygems.noarch gcc gcc-c++ make openssl-devel -y
fi

if cat /var/run/dmesg.boot | grep FreeBSD
then
  pkg install -y ruby ruby20-gems
  mkdir /var/lib/
fi

gem install json_pure -v 1.8.6
gem install puppet --no-ri --no-rdoc --version '= 4.10.8'
gem install ruby-shadow --no-ri --no-rdoc --version '= 2.5.0'


