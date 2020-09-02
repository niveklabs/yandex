terraform {
  required_providers {
    yandex = ">= 0.43.0"
  }
}

data "yandex_iam_role" "this" {
  description = var.description
  role_id     = var.role_id
}

