variable "access_key" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "content_based_deduplication" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "delay_seconds" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "fifo_queue" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "max_message_size" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "message_retention_seconds" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "name" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "name_prefix" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "receive_wait_time_seconds" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "redrive_policy" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "secret_key" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "visibility_timeout_seconds" {
  description = "(optional)"
  type        = number
  default     = null
}

