resource "github_repository" "exercism_ocaml" {
  name = "exercism-ocaml"

  allow_auto_merge       = true
  allow_merge_commit     = false
  archive_on_destroy     = true
  auto_init              = true
  delete_branch_on_merge = true
  description            = "Solutions to Exercism exercises in OCaml"
  gitignore_template     = "OCaml"
  has_issues             = false
  has_projects           = false
  has_wiki               = false
  homepage_url           = "https://exercism.org/tracks/ocaml"
  license_template       = "MIT"
  vulnerability_alerts   = true
}
