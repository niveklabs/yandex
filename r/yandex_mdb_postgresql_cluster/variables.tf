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

variable "config" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      access = list(object(
        {
          data_lens = bool
        }
      ))
      autofailover = bool
      backup_window_start = list(object(
        {
          hours   = number
          minutes = number
        }
      ))
      pooler_config = list(object(
        {
          pool_discard = bool
          pooling_mode = string
        }
      ))
      resources = list(object(
        {
          disk_size          = number
          disk_type_id       = string
          resource_preset_id = string
        }
      ))
      version = string
    }
  ))
}

variable "database" {
  description = "nested mode: NestingSet, min items: 1, max items: 0"
  type = set(object(
    {
      extension = set(object(
        {
          name    = string
          version = string
        }
      ))
      lc_collate = string
      lc_type    = string
      name       = string
      owner      = string
    }
  ))
}

variable "host" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      assign_public_ip = bool
      fqdn             = string
      role             = string
      subnet_id        = string
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
      grants   = list(string)
      login    = bool
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

