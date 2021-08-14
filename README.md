# Terraform GitHub

## Prerequisites

1. [terragrunt](https://terragrunt.gruntwork.io/docs/getting-started/install/)

## Setup

```sh
$ git clone git@github.com:ChrisWilding/terraform-github.git
$ git submodule update --init
```

## How To

### Manage Secrets

See [terraform-github-secrets](https://github.com/ChrisWilding/terraform-github-secrets)

### Apply

```sh
$ terragrunt init
$ terragrunt apply
```
