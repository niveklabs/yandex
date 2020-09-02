terraform {
  required_providers {
    yandex = ">= 0.42.0"
  }
}

resource "yandex_iam_service_account_key" "this" {
  description        = var.description
  format             = var.format
  key_algorithm      = var.key_algorithm
  pgp_key            = var.pgp_key
  service_account_id = var.service_account_id
}

