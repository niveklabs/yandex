variable "allowed_unsafe_sysctls" {
  description = "(optional)"
  type        = list(string)
  default     = null
}

variable "cluster_id" {
  description = "(required)"
  type        = string
}

variable "description" {
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

variable "node_labels" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "node_taints" {
  description = "(optional)"
  type        = list(string)
  default     = null
}

variable "version" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "allocation_policy" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      location = list(object(
        {
          subnet_id = string
          zone      = string
        }
      ))
    }
  ))
  default = []
}

variable "deploy_policy" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      max_expansion   = number
      max_unavailable = number
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
          size = number
          type = string
        }
      ))
      metadata    = map(string)
      nat         = bool
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
    }
  ))
}

variable "maintenance_policy" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      auto_repair  = bool
      auto_upgrade = bool
      maintenance_window = set(object(
        {
          day        = string
          duration   = string
          start_time = string
        }
      ))
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
          initial = number
          max     = number
          min     = number
        }
      ))
      fixed_scale = list(object(
        {
          size = number
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
      read   = string
      update = string
    }
  ))
  default = []
}

