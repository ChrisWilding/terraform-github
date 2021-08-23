resource "github_repository" "exercism_x86_64_assembly" {
  name = "exercism-x86-64-assembly"

  allow_merge_commit     = false
  archive_on_destroy     = true
  auto_init              = true
  delete_branch_on_merge = true
  description            = "Solutions to Exercism exercises in x86-64 Assembly"
  gitignore_template     = "C"
  has_issues             = false
  has_projects           = false
  has_wiki               = false
  homepage_url           = "https://exercism.io/tracks/x86-64-assembly"
  license_template       = "MIT"
  vulnerability_alerts   = true
}
