terraform {
  required_providers {
    yandex = ">= 0.42.1"
  }
}

resource "yandex_iam_service_account_static_access_key" "this" {
  description        = var.description
  pgp_key            = var.pgp_key
  service_account_id = var.service_account_id
}

