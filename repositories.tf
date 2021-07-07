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

resource "github_actions_secret" "aws_access_key_id" {
  repository       = github_repository.aws_nuke.name
  secret_name      = "AWS_ACCESS_KEY_ID"
  plaintext_value  = var.aws_access_key_id
}

resource "github_actions_secret" "aws_secret_access_key" {
  repository       = github_repository.aws_nuke.name
  secret_name      = "AWS_SECRET_ACCESS_KEY"
  plaintext_value  = var.aws_secret_access_key
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
