terraform {
  required_providers {
    yandex = ">= 0.42.1"
  }
}

resource "yandex_kms_symmetric_key" "this" {
  default_algorithm = var.default_algorithm
  description       = var.description
  folder_id         = var.folder_id
  labels            = var.labels
  name              = var.name
  rotation_period   = var.rotation_period

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      read   = timeouts.value["read"]
      update = timeouts.value["update"]
    }
  }

}

