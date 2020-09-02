terraform {
  required_providers {
    yandex = ">= 0.43.0"
  }
}

resource "yandex_vpc_security_group" "this" {
  description = var.description
  folder_id   = var.folder_id
  labels      = var.labels
  name        = var.name
  network_id  = var.network_id

  dynamic "egress" {
    for_each = var.egress
    content {
      description    = egress.value["description"]
      from_port      = egress.value["from_port"]
      labels         = egress.value["labels"]
      port           = egress.value["port"]
      protocol       = egress.value["protocol"]
      to_port        = egress.value["to_port"]
      v4_cidr_blocks = egress.value["v4_cidr_blocks"]
      v6_cidr_blocks = egress.value["v6_cidr_blocks"]
    }
  }

  dynamic "ingress" {
    for_each = var.ingress
    content {
      description    = ingress.value["description"]
      from_port      = ingress.value["from_port"]
      labels         = ingress.value["labels"]
      port           = ingress.value["port"]
      protocol       = ingress.value["protocol"]
      to_port        = ingress.value["to_port"]
      v4_cidr_blocks = ingress.value["v4_cidr_blocks"]
      v6_cidr_blocks = ingress.value["v6_cidr_blocks"]
    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

