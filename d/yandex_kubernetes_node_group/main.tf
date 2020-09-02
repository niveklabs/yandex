terraform {
  required_providers {
    yandex = ">= 0.42.0"
  }
}

data "yandex_kubernetes_node_group" "this" {
  folder_id     = var.folder_id
  name          = var.name
  node_group_id = var.node_group_id
}

