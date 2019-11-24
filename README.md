# Intro

A collection of [Packer](https://www.packer.io/) templates for creating [Re-core](https://github.com/re-ops/re-core) ready images for AWS, Digitalocean, KVM.

# Usage

```bash
# Build Ubuntu 18.04 AMI
$ packer build -var 'aws_access_key=<access-key>' -var 'aws_secret_key=<secret-key>' src/aws/ubuntu-18.04/template.json

# Build ubuntu 18.04 Digitalocean image
$ packer build -var 'api_token=<your token>' src/digital/ubuntu-18.04/template.json

# Build ubuntu 18.04 KVM image (use -var iso_url=/path/to/iso if you have pre-downloaded iso)
$ read -s password
$ packer build -var 'user=<your user>' -var "password=${password}" src/kvm/ubuntu-18.04/ubuntu-18.04-server-amd64.json

# Build ubuntu 18.04 LXD container
$ packer build -var 'user=<your user>' src/lxd/ubuntu-18.04/ubuntu-18.04-server-amd64.json

# Build an XFCE desktop varient
$ read -s password
$ packer build -var 'user=<your user>' -var "password=${password}" src/kvm/ubuntu-18.04/ubuntu-18.04-desktop-amd64.json
```

# Notes

## KVM

Import image can be done by using:

```bash
# Args include os version and kvm os version
$ ./scripts/import.sh 19.10 19.04
```

## Networking

When using a local development machine a seconday NAT to your wifi card can be added:

```xml
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
```

And used for the non management link card.

# Copyright and license

Copyright [2019] [Ronen Narkis]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.

You may obtain a copy of the License at:

  [http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


