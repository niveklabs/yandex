module "yandex_compute_instance_group" {
  source = "./modules/yandex/r/yandex_compute_instance_group"

  # deletion_protection - (optional) is a type of bool
  deletion_protection = null
  # description - (optional) is a type of string
  description = null
  # folder_id - (optional) is a type of string
  folder_id = null
  # labels - (optional) is a type of map of string
  labels = {}
  # name - (optional) is a type of string
  name = null
  # service_account_id - (required) is a type of string
  service_account_id = null
  # variables - (optional) is a type of map of string
  variables = {}

  allocation_policy = [{
    zones = []
  }]

  deploy_policy = [{
    max_creating     = null
    max_deleting     = null
    max_expansion    = null
    max_unavailable  = null
    startup_duration = null
  }]

  health_check = [{
    healthy_threshold = null
    http_options = [{
      path = null
      port = null
    }]
    interval = null
    tcp_options = [{
      port = null
    }]
    timeout             = null
    unhealthy_threshold = null
  }]

  instance_template = [{
    boot_disk = [{
      device_name = null
      initialize_params = [{
        description = null
        image_id    = null
        size        = null
        snapshot_id = null
        type        = null
      }]
      mode = null
    }]
    description = null
    hostname    = null
    labels      = {}
    metadata    = {}
    name        = null
    network_interface = [{
      ipv4               = null
      ipv6               = null
      nat                = null
      network_id         = null
      security_group_ids = []
      subnet_ids         = []
    }]
    network_settings = [{
      type = null
    }]
    platform_id = null
    resources = [{
      core_fraction = null
      cores         = null
      gpus          = null
      memory        = null
    }]
    scheduling_policy = [{
      preemptible = null
    }]
    secondary_disk = [{
      device_name = null
      initialize_params = [{
        description = null
        image_id    = null
        size        = null
        snapshot_id = null
        type        = null
      }]
      mode = null
    }]
    service_account_id = null
  }]

  load_balancer = [{
    status_message           = null
    target_group_description = null
    target_group_id          = null
    target_group_labels      = {}
    target_group_name        = null
  }]

  scale_policy = [{
    auto_scale = [{
      cpu_utilization_target = null
      custom_rule = [{
        labels      = {}
        metric_name = null
        metric_type = null
        rule_type   = null
        target      = null
      }]
      initial_size           = null
      max_size               = null
      measurement_duration   = null
      min_zone_size          = null
      stabilization_duration = null
      warmup_duration        = null
    }]
    fixed_scale = [{
      size = null
    }]
    test_auto_scale = [{
      cpu_utilization_target = null
      custom_rule = [{
        labels      = {}
        metric_name = null
        metric_type = null
        rule_type   = null
        target      = null
      }]
      initial_size           = null
      max_size               = null
      measurement_duration   = null
      min_zone_size          = null
      stabilization_duration = null
      warmup_duration        = null
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
