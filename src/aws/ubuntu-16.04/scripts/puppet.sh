echo "==> Installing Puppet"
sudo apt-get update
sudo apt-get upgrade -y
wget https://gist.githubusercontent.com/narkisr/6097786/raw/puppet-preqs.sh
chmod +x puppet-preqs.sh
sudo /bin/bash puppet-preqs.sh

