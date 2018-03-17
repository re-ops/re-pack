sudo usermod -l re-ops -m -d /home/re-ops ubuntu
sudo groupmod -n re-ops ubuntu
sudo echo "re-ops ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/re-ops



