resource "github_repository" "curriculum_vitae" {
  name = "curriculum-vitae"

  visibility = "private"

  allow_merge_commit     = false
  archive_on_destroy     = true
  auto_init              = true
  delete_branch_on_merge = true
  gitignore_template     = "TeX"
  has_issues             = false
  has_projects           = false
  has_wiki               = false
  vulnerability_alerts   = true
}
