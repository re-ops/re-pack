# Intro

A collection of packer templates for creating re-core ready images under AWS, Digitalocean, KVM etc..

# Usage


```bash
# build Ubuntu 16.04 AMI
$ cd src/aws/ubuntu-16.04
$ packer build  -var 'aws_access_key=<access-key>' -var 'aws_secret_key=<secret-key>' template.json

# build ubuntu 15.10 Digitalocean image
$ cd src/digital/ubuntu-15.10
$ packer build -only=digitalocean -var 'api_token=<your token>' template.json

# build ubuntu 16.04 KVM image
$ cd src/kvm
$ packer build -var 'user=<your user>' -var 'password=<your pass>' ubuntu-16.04-server-amd64.json

```

# Copyright and license

Copyright [2017] [Ronen Narkis]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.

You may obtain a copy of the License at:

  [http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


