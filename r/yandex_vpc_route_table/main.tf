terraform {
  required_providers {
    yandex = ">= 0.42.0"
  }
}

resource "yandex_vpc_route_table" "this" {
  description = var.description
  folder_id   = var.folder_id
  labels      = var.labels
  name        = var.name
  network_id  = var.network_id

  dynamic "static_route" {
    for_each = var.static_route
    content {
      destination_prefix = static_route.value["destination_prefix"]
      next_hop_address   = static_route.value["next_hop_address"]
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

