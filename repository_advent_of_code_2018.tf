resource "github_repository" "advent_of_code_2018" {
  name = "advent-of-code-2018"

  allow_auto_merge       = true
  allow_merge_commit     = false
  archive_on_destroy     = true
  archived               = true
  auto_init              = true
  delete_branch_on_merge = true
  description            = "Solutions to Advent of Code 2018"
  gitignore_template     = "Elixir"
  has_issues             = false
  has_projects           = false
  has_wiki               = false
  homepage_url           = "https://adventofcode.com/2018"
  license_template       = "apache-2.0"
  vulnerability_alerts   = false
}
