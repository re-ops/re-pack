# KVM

Import image can be done by using:

```bash
# Args include os version and kvm os version
$ ./scripts/import.sh 19.10 19.04
```

## Networking

When using a local development machine a seconday NAT to your wifi card can be added:

```xml
$ cat network.xml

<network connections='1'>
  <name>network</name>
  <uuid>some uuid</uuid>
  <forward dev='wlo1' mode='nat'>
    <nat>
      <port start='1024' end='65535'/>
    </nat>
    <interface dev='wlo1'/>
  </forward>
  <bridge name='virbr1' stp='on' delay='0'/>
  <mac address=''/>
  <domain name='network'/>
  <ip address='192.168.100.1' netmask='255.255.255.0'>
    <dhcp>
      <range start='192.168.100.128' end='192.168.100.254'/>
    </dhcp>
  </ip>
</network>

$ virsh net-define network.xml

```

And used for the non management link card define in the template.
