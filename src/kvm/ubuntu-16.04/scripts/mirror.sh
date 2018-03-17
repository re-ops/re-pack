sudo sed -i.bak "s/us.archive.ubuntu.com/au.archive.ubuntu.com/g" /etc/apt/sources.list
sudo sed -i.bak '/deb-src/d' /etc/apt/sources.list
