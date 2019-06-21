sudo echo "re-ops ALL=NOPASSWD: /usr/bin/apt update, /usr/bin/apt upgrade -y, /usr/bin/purge-kernels, /usr/bin/apt-cleanup, /usr/bin/apt install * -y, /usr/sbin/ufw status, /usr/bin/nmap *" > /etc/sudoers.d/re-ops



