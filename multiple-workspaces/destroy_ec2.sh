#!/bin/bash

terraform init
customers="apple google twitter"
for c in $customers; do
    echo "Selecting Workspace: $c"
    terraform workspace select $c
    echo "Destroying $c"
    terraform destroy -var-file $c.tfvars -auto-approve
done