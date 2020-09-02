variable "aliases" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "certificates" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "passwords" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "registry_id" {
  description = "(required)"
  type        = string
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

