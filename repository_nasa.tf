resource "github_repository" "nasa" {
  name = "nasa"

  allow_auto_merge       = true
  allow_merge_commit     = false
  archive_on_destroy     = true
  archived               = true
  auto_init              = true
  delete_branch_on_merge = true
  description            = "A demo React app using the NASA image and video library API"
  gitignore_template     = "Ruby"
  has_issues             = false
  has_projects           = false
  has_wiki               = false
  homepage_url           = "https://cw-nasa.herokuapp.com/search"
  license_template       = "apache-2.0"
  vulnerability_alerts   = false
}
