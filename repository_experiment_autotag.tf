resource "github_repository" "experiment_autotag" {
  name = "experiment-autotag"

  allow_auto_merge       = true
  allow_merge_commit     = false
  archive_on_destroy     = true
  auto_init              = true
  delete_branch_on_merge = true
  gitignore_template     = "Python"
  has_issues             = false
  has_projects           = false
  has_wiki               = false
  license_template       = "apache-2.0"
  vulnerability_alerts   = true
}
