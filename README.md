# Intro 

A collection of packer templates for creating Celestial ready images/ami's under AWS, GCE etc..

# Usage


```bash 
# build Ubuntu 15.04 AMI 
$ cd src/aws/ubuntu-15.04
$ packer build  -var 'aws_access_key=<access-key>' -var 'aws_secret_key=<secret-key>' template.json

# build ubuntu 15.10 GCE image
$ cd src/gce/ubuntu-15.10
$ packer build -only=googlecompute -var 'service_file=<somefile.json>' -var 'project_id=<id>' template.json

# build ubuntu 15.10 Digitalocean image
$ cd src/digital/ubuntu-15.10
$ packer build -only=digitalocean -var 'api_token=<your token>' template.json

# build ubuntu 15.10 Openstack image
$ source your-openrc.sh
$ cd src/openstack/ubuntu-15.10
# copy and edit your settings
$ cp local_example.json local.json
$ packer build -only=openstack -var-file=local.json template.json


```
 
# Copyright and license

Copyright [2015] [Ronen Narkis]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.

You may obtain a copy of the License at:

  [http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


