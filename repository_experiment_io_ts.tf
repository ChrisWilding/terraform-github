resource "github_repository" "experiment_io_ts" {
  name = "experiment-io-ts"

  allow_auto_merge       = true
  allow_merge_commit     = false
  archive_on_destroy     = true
  auto_init              = true
  delete_branch_on_merge = true
  gitignore_template     = "Node"
  has_issues             = false
  has_projects           = false
  has_wiki               = false
  license_template       = "MIT"
  vulnerability_alerts   = true
}
