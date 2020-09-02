variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "environment" {
  description = "(required)"
  type        = string
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
  description = "(required)"
  type        = string
}

variable "network_id" {
  description = "(required)"
  type        = string
}

variable "version" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "access" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      data_lens  = bool
      metrika    = bool
      serverless = bool
      web_sql    = bool
    }
  ))
  default = []
}

variable "backup_window_start" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      hours   = number
      minutes = number
    }
  ))
  default = []
}

variable "clickhouse" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      resources = list(object(
        {
          disk_size          = number
          disk_type_id       = string
          resource_preset_id = string
        }
      ))
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
      fqdn             = string
      shard_name       = string
      subnet_id        = string
      type             = string
      zone             = string
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
        }
      ))
    }
  ))
}

variable "zookeeper" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      resources = list(object(
        {
          disk_size          = number
          disk_type_id       = string
          resource_preset_id = string
        }
      ))
    }
  ))
  default = []
}

