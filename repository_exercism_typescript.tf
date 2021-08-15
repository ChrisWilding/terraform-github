resource "github_repository" "exercism_typescript" {
  name = "exercism-typescript"

  allow_merge_commit     = false
  archive_on_destroy     = true
  auto_init              = true
  delete_branch_on_merge = true
  description            = "Solutions to Exercism exercises in TypeScript"
  gitignore_template     = "Node"
  has_issues             = false
  has_projects           = false
  has_wiki               = false
  homepage_url           = "https://exercism.io/tracks/typescript"
  license_template       = "MIT"
  vulnerability_alerts   = true
}
