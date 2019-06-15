echo "==> Re-ops user setup"
sudo apt-get update
sudo adduser --disabled-password --gecos "" re-ops || true
sudo chsh -s /bin/bash re-ops
sudo chown re-ops /home/re-ops -R

