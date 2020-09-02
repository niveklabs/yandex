terraform {
  required_providers {
    yandex = ">= 0.42.1"
  }
}

data "yandex_iam_service_account" "this" {
  service_account_id = var.service_account_id
}

