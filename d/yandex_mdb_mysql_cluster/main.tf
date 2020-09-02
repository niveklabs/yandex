terraform {
  required_providers {
    yandex = ">= 0.43.0"
  }
}

data "yandex_mdb_mysql_cluster" "this" {
  cluster_id  = var.cluster_id
  description = var.description
  folder_id   = var.folder_id
  labels      = var.labels
  name        = var.name
}

