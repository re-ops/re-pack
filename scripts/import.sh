#!/usr/bin/env bash

# A script used to import kvm images into a local volume and create a template for re-core to use
# This scripts take two inputs:
#    $1 - os version (desktop
#    $2 - os varient (desktop or server)
#    $3 - domain name (ubuntu-$2-$1_corretto-8 by default)
#    $4 - import dest volume (/var/lib/libvirt/images by default)

TEMPLATE="${3:-ubuntu-$2-$1_corretto-8}"
VOLUME="${4:-/var/lib/libvirt/images}"
IMAGE="$VOLUME/$TEMPLATE.img"
# The lastest os version listed currently
OS_TYPE="20.04"
sudo cp "output-ubuntu-$1-$2/packer-ubuntu-$1-$2" $IMAGE

virsh list --all | grep $TEMPLATE
if [[ "$?" == 0 ]]; then
  virsh destroy $TEMPLATE
  virsh undefine $TEMPLATE
fi

if [[ "$2" == "server" ]]; then
  virt-install -n $TEMPLATE -r 2048 --os-type=linux --os-variant=ubuntu$OS_TYPE --disk "$IMAGE,device=disk,bus=virtio" --graphics none --network default -w bridge=virbr0,model=virtio --import --check path_in_use=off --noautoconsole
elif [[ "$2" == "desktop" ]] ; then
  virt-install -n $TEMPLATE -r 2048 --os-type=linux --os-variant=ubuntu$OS_TYPE --disk "$IMAGE,device=disk,bus=virtio" --graphics spice --sound ac97 --network default -w bridge=virbr0,model=virtio --import --check path_in_use=off --noautoconsole
else
  echo "os varient $2 is not supported"
  exit 1
fi
virsh destroy $TEMPLATE
