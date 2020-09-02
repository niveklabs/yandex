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
  description = "(required)"
  type        = string
}

variable "dlq" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      queue_id           = string
      service_account_id = string
    }
  ))
  default = []
}

variable "function" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      id                 = string
      retry_attempts     = string
      retry_interval     = string
      service_account_id = string
      tag                = string
    }
  ))
}

variable "iot" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      device_id   = string
      registry_id = string
      topic       = string
    }
  ))
  default = []
}

variable "message_queue" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      batch_cutoff       = string
      batch_size         = string
      queue_id           = string
      service_account_id = string
      visibility_timeout = string
    }
  ))
  default = []
}

variable "object_storage" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      bucket_id = string
      create    = bool
      delete    = bool
      prefix    = string
      suffix    = string
      update    = bool
    }
  ))
  default = []
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

variable "timer" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      cron_expression = string
    }
  ))
  default = []
}

