if ! id grant >/dev/null 2>&1; then
 sudo adduser --disabled-password --gecos "" grant || true
 sudo chsh -s /bin/bash grant
 sudo chown grant /home/grant -R
fi
# Enabling grant control on re-ops permissions
sudo apt-get install acl -y
sudo setfacl -R -m u:grant:rw /etc/sudoers.d/re-ops
sudo cp /tmp/grant /etc/sudoers.d/grant

# ssh folder setup
sudo mkdir /home/grant/.ssh/
sudo chmod 700 /home/grant/.ssh/ -R
sudo cp /tmp/authorized_keys /home/grant/.ssh/
sudo chown grant /home/grant/.ssh/ -R
