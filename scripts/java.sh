echo "==> Installing Amazon Java corretto 8"
wget https://d3pxv6yz143wms.cloudfront.net/8.212.04.2/java-1.8.0-amazon-corretto-jdk_8.212.04-2_amd64.deb -P /tmp
sudo apt update
sudo apt install java-common
sudo dpkg -i /tmp/java-1.8.0-amazon-corretto-jdk_8.212.04-2_amd64.deb
