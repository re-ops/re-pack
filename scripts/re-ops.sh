echo "==> Re-ops user setup"
sudo apt-get update
sudo adduser --disabled-password --gecos "" re-ops || true
sudo chsh -s /bin/bash re-ops
sudo chown re-ops /home/re-ops -R
# Enabling /etc write access for re-ops
sudo setfacl -R -m u:re-ops:rwX /etc
sudo setfacl -R -m u:root:rwX /etc
sudo chmod 400 /etc/ssh/ssh_host_*

