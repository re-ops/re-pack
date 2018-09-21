#!/usr/bin/env bash
wget https://apt.puppetlabs.com/puppetlabs-release-pc1-xenial.deb -P /tmp
sudo dpkg -i /tmp/puppetlabs-release-pc1-xenial.deb
sudo apt-get update
sudo apt-get install puppet-agent
sudo systemctl disable puppet
sudo systemctl disable mcollective
sudo ln -s /opt/puppetlabs/bin/puppet /usr/bin/puppet
