terraform {
  cloud {
    organization = "chriswilding"
    workspaces {
      name = "terraform-github"
    }
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.28.1"
    }
  }
}

provider "github" {
  owner = "chriswilding"
}
