#!/bin/bash

#copy keys into repository
cp ~/DevopsSecret/veroguz.tfvars.asc .

#decrypt keys
gpg --decrypt --no-symkey-cache --output veroguz.tfvars veroguz.tfvars.asc

#destroy terraform/terminate instances
terraform destroy

#wait 60s
sleep 60s

#remove encrypte and decrypted keys
rm veroguz.tfvars.asc veroguz.tfvars
