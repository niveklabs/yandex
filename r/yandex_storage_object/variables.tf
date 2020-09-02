variable "access_key" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "acl" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "bucket" {
  description = "(required)"
  type        = string
}

variable "content" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "content_base64" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "key" {
  description = "(required)"
  type        = string
}

variable "secret_key" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "source" {
  description = "(optional)"
  type        = string
  default     = null
}

