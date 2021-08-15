resource "github_repository" "jinventory" {
  name = "jinventory"

  allow_merge_commit     = false
  archive_on_destroy     = true
  auto_init              = true
  delete_branch_on_merge = true
  gitignore_template     = "Java"
  has_issues             = false
  has_projects           = false
  has_wiki               = false
  license_template       = "apache-2.0"
  vulnerability_alerts   = true
}

resource "github_branch_protection" "jinventory" {
  repository_id  = github_repository.jinventory.name
  pattern        = "main"
  enforce_admins = true

  required_status_checks {
    contexts = [
      "build"
    ]
    strict = true
  }
}

resource "github_actions_secret" "heroku_api_key" {
  repository      = github_repository.jinventory.name
  secret_name     = "HEROKU_API_KEY"
  plaintext_value = var.heroku_api_key
}
