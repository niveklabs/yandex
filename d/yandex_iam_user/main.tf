terraform {
  required_providers {
    yandex = ">= 0.42.1"
  }
}

data "yandex_iam_user" "this" {
  login   = var.login
  user_id = var.user_id
}

