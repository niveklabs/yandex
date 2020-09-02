terraform {
  required_providers {
    yandex = ">= 0.42.1"
  }
}

resource "yandex_compute_instance_group" "this" {
  deletion_protection = var.deletion_protection
  description         = var.description
  folder_id           = var.folder_id
  labels              = var.labels
  name                = var.name
  service_account_id  = var.service_account_id
  variables           = var.variables

  dynamic "allocation_policy" {
    for_each = var.allocation_policy
    content {
      zones = allocation_policy.value["zones"]
    }
  }

  dynamic "deploy_policy" {
    for_each = var.deploy_policy
    content {
      max_creating     = deploy_policy.value["max_creating"]
      max_deleting     = deploy_policy.value["max_deleting"]
      max_expansion    = deploy_policy.value["max_expansion"]
      max_unavailable  = deploy_policy.value["max_unavailable"]
      startup_duration = deploy_policy.value["startup_duration"]
    }
  }

  dynamic "health_check" {
    for_each = var.health_check
    content {
      healthy_threshold   = health_check.value["healthy_threshold"]
      interval            = health_check.value["interval"]
      timeout             = health_check.value["timeout"]
      unhealthy_threshold = health_check.value["unhealthy_threshold"]

      dynamic "http_options" {
        for_each = health_check.value.http_options
        content {
          path = http_options.value["path"]
          port = http_options.value["port"]
        }
      }

      dynamic "tcp_options" {
        for_each = health_check.value.tcp_options
        content {
          port = tcp_options.value["port"]
        }
      }

    }
  }

  dynamic "instance_template" {
    for_each = var.instance_template
    content {
      description        = instance_template.value["description"]
      hostname           = instance_template.value["hostname"]
      labels             = instance_template.value["labels"]
      metadata           = instance_template.value["metadata"]
      name               = instance_template.value["name"]
      platform_id        = instance_template.value["platform_id"]
      service_account_id = instance_template.value["service_account_id"]

      dynamic "boot_disk" {
        for_each = instance_template.value.boot_disk
        content {
          device_name = boot_disk.value["device_name"]
          mode        = boot_disk.value["mode"]

          dynamic "initialize_params" {
            for_each = boot_disk.value.initialize_params
            content {
              description = initialize_params.value["description"]
              image_id    = initialize_params.value["image_id"]
              size        = initialize_params.value["size"]
              snapshot_id = initialize_params.value["snapshot_id"]
              type        = initialize_params.value["type"]
            }
          }

        }
      }

      dynamic "network_interface" {
        for_each = instance_template.value.network_interface
        content {
          ipv4               = network_interface.value["ipv4"]
          ipv6               = network_interface.value["ipv6"]
          nat                = network_interface.value["nat"]
          network_id         = network_interface.value["network_id"]
          security_group_ids = network_interface.value["security_group_ids"]
          subnet_ids         = network_interface.value["subnet_ids"]
        }
      }

      dynamic "network_settings" {
        for_each = instance_template.value.network_settings
        content {
          type = network_settings.value["type"]
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

      dynamic "secondary_disk" {
        for_each = instance_template.value.secondary_disk
        content {
          device_name = secondary_disk.value["device_name"]
          mode        = secondary_disk.value["mode"]

          dynamic "initialize_params" {
            for_each = secondary_disk.value.initialize_params
            content {
              description = initialize_params.value["description"]
              image_id    = initialize_params.value["image_id"]
              size        = initialize_params.value["size"]
              snapshot_id = initialize_params.value["snapshot_id"]
              type        = initialize_params.value["type"]
            }
          }

        }
      }

    }
  }

  dynamic "load_balancer" {
    for_each = var.load_balancer
    content {
      target_group_description = load_balancer.value["target_group_description"]
      target_group_labels      = load_balancer.value["target_group_labels"]
      target_group_name        = load_balancer.value["target_group_name"]
    }
  }

  dynamic "scale_policy" {
    for_each = var.scale_policy
    content {

      dynamic "auto_scale" {
        for_each = scale_policy.value.auto_scale
        content {
          cpu_utilization_target = auto_scale.value["cpu_utilization_target"]
          initial_size           = auto_scale.value["initial_size"]
          max_size               = auto_scale.value["max_size"]
          measurement_duration   = auto_scale.value["measurement_duration"]
          min_zone_size          = auto_scale.value["min_zone_size"]
          stabilization_duration = auto_scale.value["stabilization_duration"]
          warmup_duration        = auto_scale.value["warmup_duration"]

          dynamic "custom_rule" {
            for_each = auto_scale.value.custom_rule
            content {
              labels      = custom_rule.value["labels"]
              metric_name = custom_rule.value["metric_name"]
              metric_type = custom_rule.value["metric_type"]
              rule_type   = custom_rule.value["rule_type"]
              target      = custom_rule.value["target"]
            }
          }

        }
      }

      dynamic "fixed_scale" {
        for_each = scale_policy.value.fixed_scale
        content {
          size = fixed_scale.value["size"]
        }
      }

      dynamic "test_auto_scale" {
        for_each = scale_policy.value.test_auto_scale
        content {
          cpu_utilization_target = test_auto_scale.value["cpu_utilization_target"]
          initial_size           = test_auto_scale.value["initial_size"]
          max_size               = test_auto_scale.value["max_size"]
          measurement_duration   = test_auto_scale.value["measurement_duration"]
          min_zone_size          = test_auto_scale.value["min_zone_size"]
          stabilization_duration = test_auto_scale.value["stabilization_duration"]
          warmup_duration        = test_auto_scale.value["warmup_duration"]

          dynamic "custom_rule" {
            for_each = test_auto_scale.value.custom_rule
            content {
              labels      = custom_rule.value["labels"]
              metric_name = custom_rule.value["metric_name"]
              metric_type = custom_rule.value["metric_type"]
              rule_type   = custom_rule.value["rule_type"]
              target      = custom_rule.value["target"]
            }
          }

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

