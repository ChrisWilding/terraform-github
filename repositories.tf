resource "github_repository" "aws_nuke" {
  name = "aws-nuke"

  visibility = "private"

  allow_merge_commit     = false
  auto_init              = true
  delete_branch_on_merge = true
  has_issues             = false
  has_projects           = false
  has_wiki               = false
  license_template       = "apache-2.0"
  vulnerability_alerts   = true
}

resource "github_repository" "terraform_aws" {
  name = "terraform-aws"

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

resource "github_repository" "terraform_github" {
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

resource "github_repository" "writing_an_interpreter_in_go" {
  name = "writing-an-interpreter-in-go"

  allow_merge_commit     = false
  auto_init              = true
  delete_branch_on_merge = true
  gitignore_template     = "Go"
  has_issues             = false
  has_projects           = false
  has_wiki               = false
  license_template       = "MIT"
  vulnerability_alerts   = true
}
