resource "github_repository" "terraform_repo" {
  name        = "terraform_repo"
  description = "My awesome codebase"

  visibility = "private"
}
