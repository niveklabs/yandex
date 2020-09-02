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
  description = "(required)"
  type        = string
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
      subnet_id        = string
      zone             = string
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

