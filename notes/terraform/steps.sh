#!/bin/bash

# init
terraform init

# check format
terraform fmt

# check configuration
terraform plan

# apply configuration
terraform apply
terraform apply -auto-approve

# destroy resources
terraform destroy
terraform destroy -auto-approve

# list state file
terraform state list
# show state file - state a resource
terraform state show aws_vpc.main_vpc
# see entire state - show all
terraform show