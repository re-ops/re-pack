#!/bin/bash -e
echo "==> Installing Amazon Java corretto 11"
wget -q https://corretto.aws/downloads/resources/11.0.10.9.1/java-11-amazon-corretto-jdk_11.0.10.9-1_amd64.deb -P /tmp

if md5sum --status -c <(echo 6e5a33117ef8cb771a7ef48b6fe97fc2 /tmp/java-11-amazon-corretto-jdk_11.0.10.9-1_amd64.deb); then
   sudo apt update
   sudo apt install java-common
   sudo dpkg -i /tmp/java-11-amazon-corretto-jdk_11.0.10.9-1_amd64.deb
else
  echo "failed to validate Amazon corretto download"
  exit 1
fi


