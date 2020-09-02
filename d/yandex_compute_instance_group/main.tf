terraform {
  required_providers {
    yandex = ">= 0.42.1"
  }
}

data "yandex_compute_instance_group" "this" {
  instance_group_id = var.instance_group_id
}

