echo "==> Re-ops user setup"
sudo apt-get update
if ! id re-ops >/dev/null 2>&1; then
 sudo adduser --disabled-password --gecos "" re-ops || true
 sudo chsh -s /bin/bash re-ops
 sudo chown re-ops /home/re-ops -R
fi
# Enabling /etc write access for re-ops
sudo setfacl -R -m u:re-ops:rwX /etc
sudo setfacl -R -m u:root:rwX /etc
sudo chmod 400 /etc/ssh/ssh_host_*
sudo apt-get install acl -y
sudo cp /tmp/re-ops /etc/sudoers.d/re-ops

# ssh folder setup
sudo mkdir /home/re-ops/.ssh/
sudo chmod 700 /home/re-ops/.ssh/ -R
sudo chown re-ops /home/re-ops/.ssh/ -R
