sudo apt install mate-desktop --no-install-recommends -y
sudo apt install xinit mate-session-manager mate-terminal pluma mate-desktop-environment-core ubuntu-mate-artwork alsa-base -y
# Enabling autologin
sudo sed -i 's/#  AutomaticLoginEnable = true/AutomaticLoginEnable = true/g' /etc/gdm3/custom.conf
sudo sed -i 's/#  AutomaticLogin = user1/AutomaticLogin = re-ops/g' /etc/gdm3/custom.conf
