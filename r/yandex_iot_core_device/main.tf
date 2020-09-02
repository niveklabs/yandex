terraform {
  required_providers {
    yandex = ">= 0.42.1"
  }
}

resource "yandex_iot_core_device" "this" {
  aliases      = var.aliases
  certificates = var.certificates
  description  = var.description
  name         = var.name
  passwords    = var.passwords
  registry_id  = var.registry_id

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

