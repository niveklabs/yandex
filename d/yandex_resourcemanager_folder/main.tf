terraform {
  required_providers {
    yandex = ">= 0.43.0"
  }
}

data "yandex_resourcemanager_folder" "this" {
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  labels    = var.labels
  name      = var.name
}

