#!/usr/bin/env bash

set -eux

if cat /proc/version | grep Ubuntu
then
  groupadd puppet
  sudo apt-get install git ruby-dev ruby ruby-safe-yaml build-essential -y
elif [ -f /etc/debian_version ];
then
  groupadd puppet
  sudo apt-get install git ruby1.9.1 ruby1.9.1-dev rubygems -y
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

sudo gem install json_pure -v 1.8.6
sudo gem install puppet --no-ri --no-rdoc --version '= 4.10.8'
sudo gem install ruby-shadow --no-ri --no-rdoc --version '= 2.5.0'

