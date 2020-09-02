terraform {
  required_providers {
    yandex = ">= 0.42.1"
  }
}

data "yandex_compute_snapshot" "this" {
  folder_id   = var.folder_id
  name        = var.name
  snapshot_id = var.snapshot_id
}

