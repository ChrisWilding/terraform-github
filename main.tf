terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "4.9.3"
    }
  }
}

provider "github" {
  owner = "ChrisWilding"
}

resource "github_repository" "aws-nuke" {
  name = "aws-nuke"

  visibility = "private"

  allow_merge_commit     = false
  auto_init              = true
  delete_branch_on_merge = true
  gitignore_template     = "Terraform"
  has_issues             = false
  has_projects           = false
  has_wiki               = false
  license_template       = "apache-2.0"
  vulnerability_alerts   = true
}

resource "github_repository" "terraform-github" {
  name = "terraform-github"

  visibility = "private"

  allow_merge_commit     = false
  auto_init              = true
  delete_branch_on_merge = true
  gitignore_template     = "Terraform"
  has_issues             = false
  has_projects           = false
  has_wiki               = false
  license_template       = "apache-2.0"
  vulnerability_alerts   = true
}
