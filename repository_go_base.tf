resource "github_repository" "go_base" {
  name = "go-base"

  allow_auto_merge       = true
  allow_merge_commit     = false
  archive_on_destroy     = true
  auto_init              = true
  delete_branch_on_merge = true
  gitignore_template     = "Go"
  has_issues             = false
  has_projects           = false
  has_wiki               = false
  license_template       = "apache-2.0"
  vulnerability_alerts   = true
}

resource "github_branch_protection" "go_base" {
  repository_id  = github_repository.go_base.name
  pattern        = "main"
  enforce_admins = true

  required_status_checks {
    contexts = [
      "ci",
      "lint",
    ]
    strict = true
  }
}

resource "github_actions_secret" "go_base_terraform_cloud_api_key" {
  repository      = github_repository.go_base.name
  secret_name     = "TERRAFORM_CLOUD_API_KEY"
  plaintext_value = var.terraform_cloud_api_key
}

resource "github_actions_secret" "go_base_heroku_api_key" {
  repository      = github_repository.go_base.name
  secret_name     = "HEROKU_API_KEY"
  plaintext_value = var.heroku_api_key
}
