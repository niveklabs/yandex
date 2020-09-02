terraform {
  required_providers {
    yandex = ">= 0.42.0"
  }
}

data "yandex_function_trigger" "this" {
  folder_id  = var.folder_id
  name       = var.name
  trigger_id = var.trigger_id
}

