terraform {
  required_providers {
    yandex = ">= 0.42.1"
  }
}

resource "yandex_compute_disk" "this" {
  description = var.description
  folder_id   = var.folder_id
  image_id    = var.image_id
  labels      = var.labels
  name        = var.name
  size        = var.size
  snapshot_id = var.snapshot_id
  type        = var.type
  zone        = var.zone

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

