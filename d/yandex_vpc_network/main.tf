terraform {
  required_providers {
    yandex = ">= 0.42.0"
  }
}

data "yandex_vpc_network" "this" {
  folder_id  = var.folder_id
  name       = var.name
  network_id = var.network_id
}

