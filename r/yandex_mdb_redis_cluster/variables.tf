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

variable "sharded" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "config" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      maxmemory_policy = string
      password         = string
      timeout          = number
      version          = string
    }
  ))
}

variable "host" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      fqdn       = string
      shard_name = string
      subnet_id  = string
      zone       = string
    }
  ))
}

variable "resources" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      disk_size          = number
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

