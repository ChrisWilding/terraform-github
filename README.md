# Terraform GitHub

## Prerequisites

1. [age](https://github.com/FiloSottile/age)
1. [sops](https://github.com/mozilla/sops)
1. [terraform](https://www.terraform.io)

## How To

### Decrypt secrets

```sh
$ sops --output-type json -d secrets.tfvars.json.enc > secrets.tfvars.json
```

### Encrypt secrests

```sh
$ sops -e secrets.tfvars.json > secrets.tfvars.json.enc
$ rm secrets.tfvars.json
```

### Apply Terraform

```sh
$ sops --output-type json -d secrets.tfvars.json.enc > secrets.tfvars.json
$ terraform init
$ terraform plan -out="tfplan" --var-file="secrets.tfvars.json"
$ terraform apply "tfplan"
$ rm secrets.tfvars.json
```
