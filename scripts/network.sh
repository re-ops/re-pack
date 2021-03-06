# changing network device name scheme to old mode
sed -i 's/GRUB_CMDLINE_LINUX=""/GRUB_CMDLINE_LINUX="net.ifnames=0 biosdevname=0"/' /etc/default/grub
sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="quite"/GRUB_CMDLINE_LINUX_DEFAULT="quiet"/' /etc/default/grub
update-grub

# using netplan file
sudo cp /tmp/01-netcfg.yaml /etc/netplan/
sudo netplan generate

# making dhcp client react faster
sed -i 's/#retry 60;/retry 10;/' /etc/dhcp/dhclient.conf
sed -i 's/timeout 300;/timeout 5;/' /etc/dhcp/dhclient.conf

if [ ! -z "$HOST" ] ; then
  sudo /usr/bin/hostnamectl set-hostname $HOST
fi
# removing the template hostname entry
sed -i '/127.0.1.1.*template/d' /etc/hosts

sudo apt install net-tools -y
