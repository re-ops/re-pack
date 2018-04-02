sudo apt-get install xubuntu-desktop --no-install-recommends -y
sudo apt-get install packagekit dbus at-spi2-core -y
sudo apt-get install gnome-terminal gedit vim-nox rsync -y

# Fixing local
sudo cp /tmp/locale /etc/default/locale
sudo locale-gen --purge
sudo locale-gen en_US.UTF-8

