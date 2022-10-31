terraform {
  cloud {
    organization = "ChrisWilding"
    workspaces {
      name = "terraform-github"
    }
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.7.0"
    }
  }
}

provider "github" {
  owner = "chriswilding"
}
