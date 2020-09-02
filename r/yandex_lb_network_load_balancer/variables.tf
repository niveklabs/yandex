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

variable "region_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "type" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "attached_target_group" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      healthcheck = list(object(
        {
          healthy_threshold = number
          http_options = list(object(
            {
              path = string
              port = number
            }
          ))
          interval = number
          name     = string
          tcp_options = list(object(
            {
              port = number
            }
          ))
          timeout             = number
          unhealthy_threshold = number
        }
      ))
      target_group_id = string
    }
  ))
  default = []
}

variable "listener" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      external_address_spec = list(object(
        {
          address    = string
          ip_version = string
        }
      ))
      internal_address_spec = list(object(
        {
          address    = string
          ip_version = string
          subnet_id  = string
        }
      ))
      name        = string
      port        = number
      protocol    = string
      target_port = number
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

