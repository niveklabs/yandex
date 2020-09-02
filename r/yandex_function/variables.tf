variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "entrypoint" {
  description = "(required)"
  type        = string
}

variable "environment" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "execution_timeout" {
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

variable "memory" {
  description = "(required)"
  type        = number
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "runtime" {
  description = "(required)"
  type        = string
}

variable "service_account_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "tags" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "user_hash" {
  description = "(required)"
  type        = string
}

variable "content" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      zip_filename = string
    }
  ))
  default = []
}

variable "package" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      bucket_name = string
      object_name = string
      sha_256     = string
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

