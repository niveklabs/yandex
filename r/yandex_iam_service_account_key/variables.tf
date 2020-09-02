variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "format" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "key_algorithm" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "pgp_key" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "service_account_id" {
  description = "(required)"
  type        = string
}

