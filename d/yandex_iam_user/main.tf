terraform {
  required_providers {
    yandex = ">= 0.43.0"
  }
}

data "yandex_iam_user" "this" {
  login   = var.login
  user_id = var.user_id
}

