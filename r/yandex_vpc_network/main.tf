terraform {
  required_providers {
    yandex = ">= 0.43.0"
  }
}

resource "yandex_vpc_network" "this" {
  description = var.description
  folder_id   = var.folder_id
  labels      = var.labels
  name        = var.name

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

