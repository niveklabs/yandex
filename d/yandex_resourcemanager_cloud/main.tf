terraform {
  required_providers {
    yandex = ">= 0.43.0"
  }
}

data "yandex_resourcemanager_cloud" "this" {
  cloud_id    = var.cloud_id
  description = var.description
  name        = var.name
}

