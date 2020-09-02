terraform {
  required_providers {
    yandex = ">= 0.42.1"
  }
}

resource "yandex_compute_snapshot" "this" {
  description    = var.description
  folder_id      = var.folder_id
  labels         = var.labels
  name           = var.name
  source_disk_id = var.source_disk_id

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

