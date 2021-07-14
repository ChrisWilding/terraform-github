resource "github_repository" "monkey" {
  name = "monkey"

  allow_merge_commit     = false
  auto_init              = true
  delete_branch_on_merge = true
  gitignore_template     = "Go"
  has_issues             = false
  has_projects           = false
  has_wiki               = false
  license_template       = "MIT"
  vulnerability_alerts   = true
}
