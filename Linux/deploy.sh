#!/bin/bash

#copy keys into repository
cp ~/DevopsSecret/veroguz.tfvars.asc .

#Decrypt key
gpg --decrypt --no-symkey-cache --output veroguz.tfvars veroguz.tfvars.asc

#excute and start terraform
terraform plan
terraform apply

#wait 60s
sleep 60s

#remove encrpted and decrypted keys from repository
rm veroguz.tfvars.asc veroguz.tfvars
