terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "5.32.0"
    }
  }
}

provider "github" {
  # Configuration options
}

resource "github_repository" "terraform_go_horse_lab" {
  name        = "terraform_go_horse_lab"
  description = "Repositório criado pelo Terraform no projeto Terraform Go Horse!"

  visibility = "public"
  has_issues = true
  gitignore_template = "Terraform"
  license_template = "cc-by-4.0"
}

resource "github_branch" "dev" {
  repository = github_repository.terraform_go_horse_lab.name
  branch     = "desenvolvimento"
}

resource "github_branch" "hom" {
  repository = github_repository.terraform_go_horse_lab.name
  branch     = "homologacao"
}
