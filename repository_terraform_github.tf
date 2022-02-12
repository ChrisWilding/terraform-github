resource "github_repository" "terraform_github" {
  name = "terraform-github"

  allow_auto_merge       = true
  allow_merge_commit     = false
  archive_on_destroy     = true
  auto_init              = true
  delete_branch_on_merge = true
  gitignore_template     = "Terraform"
  has_issues             = false
  has_projects           = false
  has_wiki               = false
  license_template       = "apache-2.0"
  vulnerability_alerts   = true
}

resource "github_actions_secret" "terraform_cloud_api_key" {
  repository      = github_repository.terraform_github.name
  secret_name     = "TERRAFORM_CLOUD_API_KEY"
  plaintext_value = var.terraform_cloud_api_key
}
