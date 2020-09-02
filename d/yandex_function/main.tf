terraform {
  required_providers {
    yandex = ">= 0.42.0"
  }
}

data "yandex_function" "this" {
  folder_id   = var.folder_id
  function_id = var.function_id
  name        = var.name
}

