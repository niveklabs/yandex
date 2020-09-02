terraform {
  required_providers {
    yandex = ">= 0.43.0"
  }
}

data "yandex_iam_service_account" "this" {
  folder_id          = var.folder_id
  name               = var.name
  service_account_id = var.service_account_id
}

