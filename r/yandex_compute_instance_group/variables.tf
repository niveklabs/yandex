variable "deletion_protection" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "folder_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "service_account_id" {
  description = "(required)"
  type        = string
}

variable "variables" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "allocation_policy" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      zones = set(string)
    }
  ))
}

variable "deploy_policy" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      max_creating     = number
      max_deleting     = number
      max_expansion    = number
      max_unavailable  = number
      startup_duration = number
    }
  ))
}

variable "health_check" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      healthy_threshold = number
      http_options = list(object(
        {
          path = string
          port = number
        }
      ))
      interval = number
      tcp_options = list(object(
        {
          port = number
        }
      ))
      timeout             = number
      unhealthy_threshold = number
    }
  ))
  default = []
}

variable "instance_template" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      boot_disk = list(object(
        {
          device_name = string
          initialize_params = list(object(
            {
              description = string
              image_id    = string
              size        = number
              snapshot_id = string
              type        = string
            }
          ))
          mode = string
        }
      ))
      description = string
      hostname    = string
      labels      = map(string)
      metadata    = map(string)
      name        = string
      network_interface = list(object(
        {
          ipv4               = bool
          ipv6               = bool
          nat                = bool
          network_id         = string
          security_group_ids = list(string)
          subnet_ids         = set(string)
        }
      ))
      network_settings = list(object(
        {
          type = string
        }
      ))
      platform_id = string
      resources = list(object(
        {
          core_fraction = number
          cores         = number
          gpus          = number
          memory        = number
        }
      ))
      scheduling_policy = list(object(
        {
          preemptible = bool
        }
      ))
      secondary_disk = list(object(
        {
          device_name = string
          initialize_params = list(object(
            {
              description = string
              image_id    = string
              size        = number
              snapshot_id = string
              type        = string
            }
          ))
          mode = string
        }
      ))
      service_account_id = string
    }
  ))
}

variable "load_balancer" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      status_message           = string
      target_group_description = string
      target_group_id          = string
      target_group_labels      = map(string)
      target_group_name        = string
    }
  ))
  default = []
}

variable "scale_policy" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      auto_scale = list(object(
        {
          cpu_utilization_target = number
          custom_rule = list(object(
            {
              labels      = map(string)
              metric_name = string
              metric_type = string
              rule_type   = string
              target      = number
            }
          ))
          initial_size           = number
          max_size               = number
          measurement_duration   = number
          min_zone_size          = number
          stabilization_duration = number
          warmup_duration        = number
        }
      ))
      fixed_scale = list(object(
        {
          size = number
        }
      ))
      test_auto_scale = list(object(
        {
          cpu_utilization_target = number
          custom_rule = list(object(
            {
              labels      = map(string)
              metric_name = string
              metric_type = string
              rule_type   = string
              target      = number
            }
          ))
          initial_size           = number
          max_size               = number
          measurement_duration   = number
          min_zone_size          = number
          stabilization_duration = number
          warmup_duration        = number
        }
      ))
    }
  ))
}

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      create = string
      delete = string
      update = string
    }
  ))
  default = []
}

