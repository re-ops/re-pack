# changing network device name scheme to old mode
sed -i 's/GRUB_CMDLINE_LINUX=""/GRUB_CMDLINE_LINUX="net.ifnames=0 biosdevname=0"/' /etc/default/grub
update-grub

# using netplan file
sudo cp /tmp/01-netcfg.yaml /etc/netplan/
sudo netplan generate

# making dhcp client react faster
sed -i 's/#retry 60;/retry 10;/' /etc/dhcp/dhclient.conf
sed -i 's/timeout 300;/timeout 5;/' /etc/dhcp/dhclient.conf
