echo "==>> Updating packages"
sudo apt-get -y update
sudo DEBIAN_FRONTEND=noninteractive apt-get upgrade -yq
sudo apt-get install software-properties-common -y
