variable "aad_context" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "key_id" {
  description = "(required)"
  type        = string
}

variable "plaintext" {
  description = "(required)"
  type        = string
}

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      create = string
      delete = string
      read   = string
    }
  ))
  default = []
}

