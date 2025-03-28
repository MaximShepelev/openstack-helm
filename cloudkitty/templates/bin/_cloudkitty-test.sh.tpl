#!/bin/bash

{{/*
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/}}

set -ex

cloudkitty module list

cloudkitty module enable hashmap

cloudkitty module set priority hashmap 100

cloudkitty module disable pyscripts

cloudkitty module list

## Hashmap module test

# TODO: get ID
cloudkitty hashmap group create instance_uptime_flavor_id

cloudkitty hashmap group list

# TODO: get ID
cloudkitty hashmap service create instance

# TODO: get ID
# cloudkitty hashmap field create b19d801d-e7d4-46f9-970b-3e6d60fc07b5 flavor_id
# 
# get id
# openstack flavor show m1.tiny

# cloudkitty hashmap mapping create 0.01 \
# --field-id 18aa50b6-6da8-4c47-8a1f-43236b971625 \
# --value 93195dd4-bbf3-4b13-929d-8293ae72e056 \
# -g 9a2ff37d-be86-4642-8b7d-567bace61f06 \
# -t flat

## TODO: cleanup: hashmap group, hashmap service, hashmap mapping