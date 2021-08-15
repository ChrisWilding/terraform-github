resource "github_repository" "www_chriswilding_dev" {
  name = "www.chriswilding.dev"

  allow_merge_commit     = false
  archive_on_destroy     = true
  auto_init              = true
  delete_branch_on_merge = true
  description            = "Chris Wilding's Personal Website"
  has_issues             = false
  has_projects           = false
  has_wiki               = false
  homepage_url           = "https://www.chriswilding.co.uk"
  vulnerability_alerts   = true
}
