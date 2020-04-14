# changing network device name scheme to old mode
sed -i 's/GRUB_CMDLINE_LINUX=""/GRUB_CMDLINE_LINUX="net.ifnames=0 biosdevname=0 ipv6.disable=1"/' /etc/default/grub
sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="quite"/GRUB_CMDLINE_LINUX_DEFAULT="ipv6.disable=1 quiet"/' /etc/default/grub
update-grub

# using netplan file
sudo cp /tmp/01-netcfg.yaml /etc/netplan/
sudo netplan generate

# making dhcp client react faster
sed -i 's/#retry 60;/retry 10;/' /etc/dhcp/dhclient.conf
sed -i 's/timeout 300;/timeout 5;/' /etc/dhcp/dhclient.conf

# removing the template hostname entry
sed -i '/127.0.1.1.*template/d' /etc/hosts
