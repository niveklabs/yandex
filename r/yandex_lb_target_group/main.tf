terraform {
  required_providers {
    yandex = ">= 0.43.0"
  }
}

resource "yandex_lb_target_group" "this" {
  description = var.description
  folder_id   = var.folder_id
  labels      = var.labels
  name        = var.name
  region_id   = var.region_id

  dynamic "target" {
    for_each = var.target
    content {
      address   = target.value["address"]
      subnet_id = target.value["subnet_id"]
    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

