terraform {
  required_providers {
    yandex = ">= 0.43.0"
  }
}

data "yandex_compute_disk" "this" {
  disk_id   = var.disk_id
  folder_id = var.folder_id
  name      = var.name
}

