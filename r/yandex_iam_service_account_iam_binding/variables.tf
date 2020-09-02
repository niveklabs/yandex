variable "members" {
  description = "(required)"
  type        = set(string)
}

variable "role" {
  description = "(required)"
  type        = string
}

variable "service_account_id" {
  description = "(required)"
  type        = string
}

variable "sleep_after" {
  description = "(optional)"
  type        = number
  default     = null
}

