terraform {
  required_providers {
    yandex = ">= 0.42.1"
  }
}

resource "yandex_kubernetes_node_group" "this" {
  allowed_unsafe_sysctls = var.allowed_unsafe_sysctls
  cluster_id             = var.cluster_id
  description            = var.description
  labels                 = var.labels
  name                   = var.name
  node_labels            = var.node_labels
  node_taints            = var.node_taints
  version                = var.version

  dynamic "allocation_policy" {
    for_each = var.allocation_policy
    content {

      dynamic "location" {
        for_each = allocation_policy.value.location
        content {
          subnet_id = location.value["subnet_id"]
          zone      = location.value["zone"]
        }
      }

    }
  }

  dynamic "deploy_policy" {
    for_each = var.deploy_policy
    content {
      max_expansion   = deploy_policy.value["max_expansion"]
      max_unavailable = deploy_policy.value["max_unavailable"]
    }
  }

  dynamic "instance_template" {
    for_each = var.instance_template
    content {
      metadata    = instance_template.value["metadata"]
      nat         = instance_template.value["nat"]
      platform_id = instance_template.value["platform_id"]

      dynamic "boot_disk" {
        for_each = instance_template.value.boot_disk
        content {
          size = boot_disk.value["size"]
          type = boot_disk.value["type"]
        }
      }

      dynamic "resources" {
        for_each = instance_template.value.resources
        content {
          core_fraction = resources.value["core_fraction"]
          cores         = resources.value["cores"]
          gpus          = resources.value["gpus"]
          memory        = resources.value["memory"]
        }
      }

      dynamic "scheduling_policy" {
        for_each = instance_template.value.scheduling_policy
        content {
          preemptible = scheduling_policy.value["preemptible"]
        }
      }

    }
  }

  dynamic "maintenance_policy" {
    for_each = var.maintenance_policy
    content {
      auto_repair  = maintenance_policy.value["auto_repair"]
      auto_upgrade = maintenance_policy.value["auto_upgrade"]

      dynamic "maintenance_window" {
        for_each = maintenance_policy.value.maintenance_window
        content {
          day        = maintenance_window.value["day"]
          duration   = maintenance_window.value["duration"]
          start_time = maintenance_window.value["start_time"]
        }
      }

    }
  }

  dynamic "scale_policy" {
    for_each = var.scale_policy
    content {

      dynamic "auto_scale" {
        for_each = scale_policy.value.auto_scale
        content {
          initial = auto_scale.value["initial"]
          max     = auto_scale.value["max"]
          min     = auto_scale.value["min"]
        }
      }

      dynamic "fixed_scale" {
        for_each = scale_policy.value.fixed_scale
        content {
          size = fixed_scale.value["size"]
        }
      }

    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      read   = timeouts.value["read"]
      update = timeouts.value["update"]
    }
  }

}

