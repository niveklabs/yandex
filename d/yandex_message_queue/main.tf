terraform {
  required_providers {
    yandex = ">= 0.42.1"
  }
}

data "yandex_message_queue" "this" {
  access_key = var.access_key
  name       = var.name
  secret_key = var.secret_key
}

