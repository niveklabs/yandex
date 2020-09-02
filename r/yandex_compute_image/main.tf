terraform {
  required_providers {
    yandex = ">= 0.42.0"
  }
}

resource "yandex_compute_image" "this" {
  description     = var.description
  family          = var.family
  folder_id       = var.folder_id
  labels          = var.labels
  min_disk_size   = var.min_disk_size
  name            = var.name
  os_type         = var.os_type
  product_ids     = var.product_ids
  source_disk     = var.source_disk
  source_family   = var.source_family
  source_image    = var.source_image
  source_snapshot = var.source_snapshot
  source_url      = var.source_url

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

