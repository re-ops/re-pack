sudo apt-get update
sudo apt-get install nodejs openjdk-8-jre-headless -y

sudo adduser --disabled-password --gecos "" re-ops || true
sudo chsh -s /bin/bash re-ops
sudo chown re-ops /home/re-ops -R

