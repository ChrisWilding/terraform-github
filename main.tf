terraform {
  backend "s3" {
    bucket = "terraform-nu2dp3915g"
    key    = "github/state.tf"
    region = "eu-west-1"

    dynamodb_table = "terraform"
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "> 4.9.0"
    }
  }
}

provider "github" {
  owner = "ChrisWilding"
}
