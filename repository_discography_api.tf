resource "github_repository" "discography_api" {
  name = "discography-api"

  allow_merge_commit     = false
  archive_on_destroy     = true
  auto_init              = true
  delete_branch_on_merge = true
  description            = "A GraphQL API for discography"
  gitignore_template     = "Scala"
  has_issues             = false
  has_projects           = false
  has_wiki               = false
  homepage_url           = "https://cw-discography-api.herokuapp.com/playground"
  license_template       = "apache-2.0"
  vulnerability_alerts   = true
}
