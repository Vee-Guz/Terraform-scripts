#!/bin/bash

#copy keys into repository
cp ~/DevopsSecret/veroguz.tfvars.asc

#decrypt keys
gpg --decrypt --no-symkey-cache --output veroguz.tfvars veroguz.tfvars.asc

#destroy terraform/terminate instances
terraform destroy

#remove encrypte and decrypted keys
rm veroguz.tfvar.asc veroguz.asc
