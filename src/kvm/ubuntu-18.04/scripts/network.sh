# changing network device name scheme to old mode
sed -i 's/GRUB_CMDLINE_LINUX=""/GRUB_CMDLINE_LINUX="net.ifnames=0 biosdevname=0"/' /etc/default/grub
update-grub

# echo "auto lo" > /etc/network/interfaces
# echo "iface lo inet loopback" >> /etc/network/interfaces
# echo "auto eth0"  >> /etc/network/interfaces
# echo "iface eth0 inet dhcp" >> /etc/network/interfaces
# echo "auto eth1"  >> /etc/network/interfaces
# echo "iface eth1 inet dhcp" >> /etc/network/interfaces

# using netplan file
sudo cp /tmp/01-netcfg.yaml /etc/netplan/
sudo netplan apply

# making dhcp client react faster
sed -i 's/#retry 60;/retry 10;/' /etc/dhcp/dhclient.conf
sed -i 's/timeout 300;/timeout 5;/' /etc/dhcp/dhclient.conf

