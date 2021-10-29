resource "github_repository" "exercism_scala" {
  name = "exercism-scala"

  allow_merge_commit     = false
  archive_on_destroy     = true
  auto_init              = true
  delete_branch_on_merge = true
  description            = "Solutions to Exercism exercises in Scala"
  gitignore_template     = "Scala"
  has_issues             = false
  has_projects           = false
  has_wiki               = false
  homepage_url           = "https://exercism.org/tracks/scala"
  license_template       = "MIT"
  vulnerability_alerts   = true
}
