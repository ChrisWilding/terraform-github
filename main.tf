terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.18.2"
    }
  }
}

provider "github" {
  owner = "ChrisWilding"
}
