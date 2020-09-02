terraform {
  required_providers {
    yandex = ">= 0.42.0"
  }
}

data "yandex_lb_target_group" "this" {
  folder_id       = var.folder_id
  name            = var.name
  target_group_id = var.target_group_id
}

