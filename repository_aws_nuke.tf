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
  repository      = github_repository.aws_nuke.name
  secret_name     = "AWS_ACCESS_KEY_ID"
  plaintext_value = var.aws_access_key_id
}

resource "github_actions_secret" "aws_secret_access_key" {
  repository      = github_repository.aws_nuke.name
  secret_name     = "AWS_SECRET_ACCESS_KEY"
  plaintext_value = var.aws_secret_access_key
}
