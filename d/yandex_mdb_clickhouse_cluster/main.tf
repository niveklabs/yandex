terraform {
  required_providers {
    yandex = ">= 0.42.0"
  }
}

data "yandex_mdb_clickhouse_cluster" "this" {
  cluster_id = var.cluster_id
  folder_id  = var.folder_id
  name       = var.name
}

