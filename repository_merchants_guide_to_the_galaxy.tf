resource "github_repository" "merchants_guide_to_the_galaxy" {
  name = "merchants-guide-to-the-galaxy"

  allow_auto_merge       = true
  allow_merge_commit     = false
  archive_on_destroy     = true
  archived               = true
  auto_init              = true
  delete_branch_on_merge = true
  description            = "Solution to the Merchant's Guide to the Galaxy exercise"
  gitignore_template     = "Ruby"
  has_issues             = false
  has_projects           = false
  has_wiki               = false
  license_template       = "apache-2.0"
  vulnerability_alerts   = false
}
