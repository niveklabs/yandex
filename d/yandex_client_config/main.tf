terraform {
  required_providers {
    yandex = ">= 0.42.1"
  }
}

data "yandex_client_config" "this" {
}

