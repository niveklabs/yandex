terraform {
  required_providers {
    yandex = ">= 0.42.0"
  }
}

data "yandex_dataproc_cluster" "this" {
  cluster_id = var.cluster_id
  name       = var.name
}

