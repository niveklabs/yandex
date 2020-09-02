terraform {
  required_providers {
    yandex = ">= 0.42.1"
  }
}

resource "yandex_iot_core_registry" "this" {
  certificates = var.certificates
  description  = var.description
  folder_id    = var.folder_id
  labels       = var.labels
  name         = var.name
  passwords    = var.passwords

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

