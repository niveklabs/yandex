terraform {
  required_providers {
    yandex = ">= 0.43.0"
  }
}

data "yandex_container_registry" "this" {
  folder_id   = var.folder_id
  labels      = var.labels
  name        = var.name
  registry_id = var.registry_id
}

