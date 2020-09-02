terraform {
  required_providers {
    yandex = ">= 0.42.1"
  }
}

data "yandex_kubernetes_cluster" "this" {
  cluster_id = var.cluster_id
  folder_id  = var.folder_id
  name       = var.name
}

