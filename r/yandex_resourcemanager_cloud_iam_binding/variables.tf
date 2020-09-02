variable "cloud_id" {
  description = "(required)"
  type        = string
}

variable "members" {
  description = "(required)"
  type        = set(string)
}

variable "role" {
  description = "(required)"
  type        = string
}

variable "sleep_after" {
  description = "(optional)"
  type        = number
  default     = null
}

