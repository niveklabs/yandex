terraform {
  required_providers {
    yandex = ">= 0.42.1"
  }
}

data "yandex_iot_core_registry" "this" {
  folder_id   = var.folder_id
  name        = var.name
  registry_id = var.registry_id
}

