resource "github_repository" "spring_microservices_in_action" {
  name = "spring-microservices-in-action"

  allow_merge_commit     = false
  archive_on_destroy     = true
  archived               = false
  auto_init              = true
  delete_branch_on_merge = true
  gitignore_template     = "Java"
  has_issues             = false
  has_projects           = false
  has_wiki               = false
  license_template       = "MIT"
  vulnerability_alerts   = true
}
