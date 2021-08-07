#!/bin/bash

#copy keys into repository
cp ~/DevopsSecret/terraform.tfvars.asc .

#decrypt keys
gpg --decrypt --no-symkey-cache --output terraform.tfvars terraform.tfvars.asc

#destroy terraform/terminate instances
terraform destroy

#wait 60s
sleep 60s

#remove encrypte and decrypted keys
rm terraform.tfvars.asc terraform.tfvars
