sudo groupadd puppet
sudo apt-get install git ruby1.9.1 ruby1.9.1-dev rubygems -y

sudo gem install puppet --no-ri --no-rdoc --version '= 3.4.2'
sudo gem uninstall hiera -aIx
# 1.3.0 is broken
sudo gem install hiera -v '1.2.1'
sudo gem install ruby-shadow --no-ri --no-rdoc --version '= 2.2.0'
