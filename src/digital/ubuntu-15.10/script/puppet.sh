#!/bin/bash -eux

echo "==> Installing Puppet"
wget https://gist.githubusercontent.com/narkisr/6097786/raw/puppet-preqs.sh
chmod +x puppet-preqs.sh
/bin/bash puppet-preqs.sh

