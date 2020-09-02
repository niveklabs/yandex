terraform {
  required_providers {
    yandex = ">= 0.42.0"
  }
}

data "yandex_vpc_route_table" "this" {
  folder_id      = var.folder_id
  name           = var.name
  route_table_id = var.route_table_id
}

