terraform {
  required_providers {
    yandex = ">= 0.42.1"
  }
}

resource "yandex_lb_network_load_balancer" "this" {
  description = var.description
  folder_id   = var.folder_id
  labels      = var.labels
  name        = var.name
  region_id   = var.region_id
  type        = var.type

  dynamic "attached_target_group" {
    for_each = var.attached_target_group
    content {
      target_group_id = attached_target_group.value["target_group_id"]

      dynamic "healthcheck" {
        for_each = attached_target_group.value.healthcheck
        content {
          healthy_threshold   = healthcheck.value["healthy_threshold"]
          interval            = healthcheck.value["interval"]
          name                = healthcheck.value["name"]
          timeout             = healthcheck.value["timeout"]
          unhealthy_threshold = healthcheck.value["unhealthy_threshold"]

          dynamic "http_options" {
            for_each = healthcheck.value.http_options
            content {
              path = http_options.value["path"]
              port = http_options.value["port"]
            }
          }

          dynamic "tcp_options" {
            for_each = healthcheck.value.tcp_options
            content {
              port = tcp_options.value["port"]
            }
          }

        }
      }

    }
  }

  dynamic "listener" {
    for_each = var.listener
    content {
      name        = listener.value["name"]
      port        = listener.value["port"]
      protocol    = listener.value["protocol"]
      target_port = listener.value["target_port"]

      dynamic "external_address_spec" {
        for_each = listener.value.external_address_spec
        content {
          address    = external_address_spec.value["address"]
          ip_version = external_address_spec.value["ip_version"]
        }
      }

      dynamic "internal_address_spec" {
        for_each = listener.value.internal_address_spec
        content {
          address    = internal_address_spec.value["address"]
          ip_version = internal_address_spec.value["ip_version"]
          subnet_id  = internal_address_spec.value["subnet_id"]
        }
      }

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

