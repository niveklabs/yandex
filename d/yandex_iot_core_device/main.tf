terraform {
  required_providers {
    yandex = ">= 0.43.0"
  }
}

data "yandex_iot_core_device" "this" {
  device_id = var.device_id
  name      = var.name
}

