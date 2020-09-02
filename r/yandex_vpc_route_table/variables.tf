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

variable "network_id" {
  description = "(required)"
  type        = string
}

variable "static_route" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      destination_prefix = string
      next_hop_address   = string
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

