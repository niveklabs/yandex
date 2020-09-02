terraform {
  required_providers {
    yandex = ">= 0.42.0"
  }
}

data "yandex_compute_image" "this" {
  family    = var.family
  folder_id = var.folder_id
  image_id  = var.image_id
  name      = var.name
}

