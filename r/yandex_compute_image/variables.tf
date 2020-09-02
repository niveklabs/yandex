variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "family" {
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

variable "min_disk_size" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "name" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "os_type" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "product_ids" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "source_disk" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "source_family" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "source_image" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "source_snapshot" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "source_url" {
  description = "(optional)"
  type        = string
  default     = null
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

