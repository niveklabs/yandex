variable "cluster_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "environment" {
  description = "(required)"
  type        = string
}

variable "labels" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "network_id" {
  description = "(required)"
  type        = string
}

variable "cluster_config" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      access = list(object(
        {
          data_lens = bool
        }
      ))
      backup_window_start = list(object(
        {
          hours   = number
          minutes = number
        }
      ))
      feature_compatibility_version = string
      version                       = string
    }
  ))
}

variable "database" {
  description = "nested mode: NestingSet, min items: 1, max items: 0"
  type = set(object(
    {
      name = string
    }
  ))
}

variable "host" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      assign_public_ip = bool
      health           = string
      name             = string
      role             = string
      shard_name       = string
      subnet_id        = string
      type             = string
      zone_id          = string
    }
  ))
}

variable "resources" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      disk_size          = number
      disk_type_id       = string
      resource_preset_id = string
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

variable "user" {
  description = "nested mode: NestingSet, min items: 1, max items: 0"
  type = set(object(
    {
      name     = string
      password = string
      permission = set(object(
        {
          database_name = string
          roles         = list(string)
        }
      ))
    }
  ))
}

