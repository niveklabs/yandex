terraform {
  required_providers {
    yandex = ">= 0.42.1"
  }
}

data "yandex_resourcemanager_cloud" "this" {
  cloud_id    = var.cloud_id
  description = var.description
  name        = var.name
}

