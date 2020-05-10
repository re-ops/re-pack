echo "==> Installing Amazon Java corretto 8"
wget https://corretto.aws/downloads/resources/8.252.09.1/java-1.8.0-amazon-corretto-jdk_8.252.09-1_amd64.deb -P /tmp
if md5sum --status -c <(echo bc266354a0a02aaf93ecc5062ee24ff8 /tmp/java-1.8.0-amazon-corretto-jdk_8.252.09-1_amd64.deb); then
   sudo apt update
   sudo apt install java-common
   sudo dpkg -i /tmp/java-1.8.0-amazon-corretto-jdk_8.252.09-1_amd64.deb
else
  echo "failed to validate Amazon corretto download"
  exit 1
fi


