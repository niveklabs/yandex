terraform {
  required_providers {
    yandex = ">= 0.42.0"
  }
}

data "yandex_vpc_subnet" "this" {
  folder_id = var.folder_id
  name      = var.name
  subnet_id = var.subnet_id
}

