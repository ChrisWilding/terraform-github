resource "github_repository" "crawl" {
  name = "crawl"

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

resource "github_branch_protection" "crawl" {
  repository_id  = github_repository.crawl.name
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
