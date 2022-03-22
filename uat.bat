terraform init
terraform plan -var-file=uat.tfvars -out uat.tfplan
terraform apply uat.tfplan
pause