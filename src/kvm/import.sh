VERSION="16.04.3"
PUPPET="4.10.8"
export TARGET="ubuntu-${VERSION}_puppet-${PUPPET}"
virsh destroy $TARGET
virsh undefine $TARGET
virt-install -n $TARGET -r 2048 --os-type=linux --os-variant=ubuntu16.04 --disk "output-ubuntu-$VERSION-server/packer-ubuntu-$VERSION-server,device=disk,bus=virtio" -w  bridge=virbr0,model=virtio --vnc --noautoconsole --import
