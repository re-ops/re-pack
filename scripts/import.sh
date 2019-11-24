#!/usr/bin/env bash

# A script used to import kvm images into our local hypervisor

TARGET="ubuntu-$1_correto-8"
IMAGE="/var/lib/libvirt/images/ubuntu-$1_correto-8.img"
cp "output-ubuntu-$1-server/packer-ubuntu-$1-server" $IMAGE

virsh destroy $TARGET
virsh undefine $TARGET
virt-install -n $TARGET -r 2048 --os-type=linux --os-variant=ubuntu$2 --disk "$IMAGE,device=disk,bus=virtio" -w  bridge=virbr0,model=virtio --vnc --noautoconsole --import
