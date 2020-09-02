terraform {
  required_providers {
    yandex = ">= 0.43.0"
  }
}

data "yandex_client_config" "this" {
}

