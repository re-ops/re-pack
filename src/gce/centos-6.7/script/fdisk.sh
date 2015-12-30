#!/bin/bash -eux

echo "==> Resize Disk"
wget https://raw.githubusercontent.com/narkisr/stackexchange-answers/master/stackoverflow/24021214/fdisk.sh
chmod +x fdisk.sh
/bin/bash fdisk.sh

