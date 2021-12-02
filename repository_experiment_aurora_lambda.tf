resource "github_repository" "experiment_aurora_lambda" {
  name = "experiment-aurora-lambda"

  allow_auto_merge       = true
  allow_merge_commit     = false
  archive_on_destroy     = true
  auto_init              = true
  delete_branch_on_merge = true
  has_issues             = false
  has_projects           = false
  has_wiki               = false
  license_template       = "apache-2.0"
  vulnerability_alerts   = true
}
