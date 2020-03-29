# Intro

A collection of [Packer](https://www.packer.io/) templates for creating [Re-core](https://github.com/re-ops/re-core) ready images for AWS, Digitalocean, KVM and LXC.

# Usage

FIrst populate the master ssh key that will be used by [Re-mote](https://github.com/re-ops/re-mote).

```bash
# On dev environments we might use our local key
$ cat ~/.ssh/id_rsa.pub > http/authorized_keys
```

Now head on and build the image of the hypervisor you will be using:

```bash
# Build Ubuntu 18.04 AMI
$ packer build -var 'aws_access_key=<access-key>' -var 'aws_secret_key=<secret-key>' src/aws/ubuntu-18.04/template.json

# Build ubuntu 18.04 Digitalocean image
$ packer build -var 'api_token=<your token>' src/digital/ubuntu-18.04/template.json

# Build ubuntu 18.04 KVM image (use -var iso_url=/path/to/iso if you have pre-downloaded iso)
$ read -s password
$ packer build -var 'user=<your user>' -var "password=${password}" src/kvm/ubuntu-18.04/ubuntu-18.04-server-amd64.json

# Build ubuntu 19.10 KVM image (use -var iso_url=/path/to/iso if you have pre-downloaded iso)
$ read -s password
$ packer build -var 'user=<your user>' -var "password=${password}" src/kvm/ubuntu-19.10/ubuntu-19.10-server-amd64.json

# Build ubuntu 18.04 LXD container
$ packer build -var 'user=<your user>' src/lxd/ubuntu-18.04/ubuntu-18.04-server-amd64.json

# Build an XFCE desktop varient
$ read -s password
$ packer build -var 'user=<your user>' -var "password=${password}" src/kvm/ubuntu-18.04/ubuntu-18.04-desktop-amd64.json

# Build an Ubutnu Mate desktop varient
$ read -s password
$ packer build -var 'user=<your user>' -var "password=${password}" src/kvm/ubuntu-19.10/ubuntu-19.10-desktop-amd64.json

# importing (kvm only)
$ ./scripts/import.sh 19.10 server
```

Check the [notes](./notes) section per hypervizor type for more information.

# Copyright and license

Copyright [2020] [Ronen Narkis]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.

You may obtain a copy of the License at:

  [http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


