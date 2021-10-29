resource "github_repository" "exercism_kotlin" {
  name = "exercism-kotlin"

  allow_merge_commit     = false
  archive_on_destroy     = true
  auto_init              = true
  delete_branch_on_merge = true
  description            = "Solutions to Exercism exercises in Kotlin"
  gitignore_template     = "Kotlin"
  has_issues             = false
  has_projects           = false
  has_wiki               = false
  homepage_url           = "https://exercism.org/tracks/kotlin"
  license_template       = "MIT"
  vulnerability_alerts   = true
}
