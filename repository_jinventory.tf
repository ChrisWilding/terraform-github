resource "github_repository" "jinventory" {
  name = "jinventory"

  allow_auto_merge       = true
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
