# Configure the GitHub Provider
provider "github" {
  token = "TOKEN"
}

resource "github_repository" "example" {
  name        = "example"
  description = "My awesome codebase"

  visibility = "public"
}