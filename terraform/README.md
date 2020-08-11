# AKS Azure

Create an Active Directory service principal account.

´´´
    az ad sp create-for-rbac --skip-assignment
´´´

### Terraform commands

´´´
    terraform init
    terraform apply
    terraform destroy

´´´

### Configure kubectl

´´´
    az aks get-credentials --resource-group sframpup-rg --name sframpup-aks
´´´