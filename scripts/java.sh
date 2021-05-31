#!/bin/bash -e
echo "==> Installing Amazon Java corretto 11"
wget -O- https://apt.corretto.aws/corretto.key | sudo /usr/bin/apt-key add -
sudo /usr/bin/add-apt-repository 'deb https://apt.corretto.aws stable main'
sudo /usr/bin/apt-get update
sudo /usr/bin/apt-get install -y java-11-amazon-corretto-jdk
