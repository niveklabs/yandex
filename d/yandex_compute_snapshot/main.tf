terraform {
  required_providers {
    yandex = ">= 0.43.0"
  }
}

data "yandex_compute_snapshot" "this" {
  folder_id   = var.folder_id
  name        = var.name
  snapshot_id = var.snapshot_id
}

