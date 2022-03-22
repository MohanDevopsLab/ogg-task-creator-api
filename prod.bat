terraform init
terraform plan -var-file=prod.tfvars -out prod.tfplan
terraform apply prod.tfplan
pause