terraform init
terraform plan -var-file=dev.tfvars
terraform apply terraform.tfstate.d\dev\dev.tfplan
pause