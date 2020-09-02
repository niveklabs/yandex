terraform {
  required_providers {
    yandex = ">= 0.42.0"
  }
}

data "yandex_mdb_postgresql_cluster" "this" {
  cluster_id  = var.cluster_id
  description = var.description
  folder_id   = var.folder_id
  name        = var.name
}

