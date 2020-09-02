terraform {
  required_providers {
    yandex = ">= 0.42.1"
  }
}

data "yandex_vpc_security_group" "this" {
  security_group_id = var.security_group_id
}

