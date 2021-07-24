#!/bin/bash

#copy keys into repository
cp ~/DevopsSecret/veroguz.tfvars.asc .

#Decrypt key
gpg --decrypt --no-symkey-cache --output veroguz.tfvars veroguz.tfvars.asc

#deploy terraform
terraform plan
terraform apply

#remove encrpted and decrypted keys from repository
rm veroguz.tfvars.asc veroguz.tfvars
