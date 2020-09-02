terraform {
  required_providers {
    yandex = ">= 0.42.0"
  }
}

data "yandex_lb_network_load_balancer" "this" {
  folder_id                = var.folder_id
  name                     = var.name
  network_load_balancer_id = var.network_load_balancer_id
}

