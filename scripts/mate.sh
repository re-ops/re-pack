sudo apt install mate-desktop --no-install-recommends -y
sudo apt install xinit -y
sudo apt install mate-session-manager -y
sudo apt install mate-terminal -y
sudo apt install pluma -y
sudo apt install mate-desktop-environment-core -y
sudo apt install ubuntu-mate-artwork -y
# Enabling autologin
sudo sed -i 's/# AutomaticLoginEnable = true/AutomaticLoginEnable = true/g' /etc/gdm3/custom.conf
sudo sed -i 's/# AutomaticLogin = user/AutomaticLogin = re-ops/g' /etc/gdm3/custom.conf
