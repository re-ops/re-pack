virt-install -n ubuntu-16.04.2 -r 2048 --os-type=linux --os-variant=ubuntu16.04 --disk output-ubuntu-1604-server/packer-ubuntu-1604-server,device=disk,bus=virtio -w  bridge=virbr0,model=virtio --vnc --noautoconsole --import
