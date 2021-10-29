resource "github_repository" "exercism_go" {
  name = "exercism-go"

  allow_merge_commit     = false
  archive_on_destroy     = true
  auto_init              = true
  delete_branch_on_merge = true
  description            = "Solutions to Exercism exercises in Go"
  gitignore_template     = "Go"
  has_issues             = false
  has_projects           = false
  has_wiki               = false
  homepage_url           = "https://exercism.org/tracks/go"
  license_template       = "MIT"
  vulnerability_alerts   = true
}
