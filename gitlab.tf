locals {
  description = "${upper(var.name)}: ${var.description}"
}

resource "gitlab_project" "terraform_go_horse_lab" {
  name        = var.name
  description = local.description

  visibility_level = var.visibility
}
