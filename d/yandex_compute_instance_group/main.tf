terraform {
  required_providers {
    yandex = ">= 0.43.0"
  }
}

data "yandex_compute_instance_group" "this" {
  instance_group_id = var.instance_group_id
}

