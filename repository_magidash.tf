resource "github_repository" "magidash" {
  name = "magidash"

  allow_merge_commit     = false
  archive_on_destroy     = true
  auto_init              = true
  delete_branch_on_merge = true
  has_issues             = false
  has_projects           = false
  has_wiki               = false
  license_template       = "apache-2.0"
  vulnerability_alerts   = true
}

resource "github_actions_secret" "magidash_heroku_api_key" {
  repository      = github_repository.magidash.name
  secret_name     = "HEROKU_API_KEY"
  plaintext_value = var.heroku_api_key
}
