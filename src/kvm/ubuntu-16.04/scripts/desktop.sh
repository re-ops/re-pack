sudo apt-get install xubuntu-desktop --no-install-recommends -y
sudo apt-get install packagekit dbus at-spi2-core -y
sudo apt-get install gnome-terminal gedit -y

# Fixing local
sudo local-gen --purge
sudo local-gen en_US.UTF-8

