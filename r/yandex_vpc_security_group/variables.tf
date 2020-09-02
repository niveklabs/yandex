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

variable "egress" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      description    = string
      from_port      = number
      id             = string
      labels         = map(string)
      port           = number
      protocol       = string
      to_port        = number
      v4_cidr_blocks = list(string)
      v6_cidr_blocks = list(string)
    }
  ))
  default = []
}

variable "ingress" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      description    = string
      from_port      = number
      id             = string
      labels         = map(string)
      port           = number
      protocol       = string
      to_port        = number
      v4_cidr_blocks = list(string)
      v6_cidr_blocks = list(string)
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

