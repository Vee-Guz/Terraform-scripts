#!/bin/bash

#copy keys into repository
cp ~/DevopsSecret/terraform.tfvars.asc .

#Decrypt key
gpg --decrypt --no-symkey-cache --output terraform.tfvars terraform.tfvars.asc

sleep 2s

#excute and start terraform
terraform plan
terraform apply

#wait 60s
sleep 60s

#remove encrpted and decrypted keys from repository
rm terraform.tfvars*
