terraform {
  required_providers {
    yandex = ">= 0.42.1"
  }
}

data "yandex_container_registry" "this" {
  folder_id   = var.folder_id
  labels      = var.labels
  name        = var.name
  registry_id = var.registry_id
}

