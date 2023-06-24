resource "github_repository" "advent_of_code_2021" {
  name = "advent-of-code-2021"

  allow_auto_merge       = true
  allow_merge_commit     = false
  archive_on_destroy     = true
  archived               = false
  auto_init              = true
  delete_branch_on_merge = true
  description            = "Solutions to Advent of Code 2021"
  gitignore_template     = "Go"
  has_issues             = false
  has_projects           = false
  has_wiki               = false
  homepage_url           = "https://adventofcode.com/2021"
  license_template       = "apache-2.0"
  vulnerability_alerts   = false
}
