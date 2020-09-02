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
  description = "(optional)"
  type        = string
  default     = null
}

variable "bucket_prefix" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "force_destroy" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "secret_key" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "website_domain" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "website_endpoint" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "cors_rule" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      allowed_headers = list(string)
      allowed_methods = list(string)
      allowed_origins = list(string)
      expose_headers  = list(string)
      max_age_seconds = number
    }
  ))
  default = []
}

variable "grant" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      id          = string
      permissions = set(string)
      type        = string
      uri         = string
    }
  ))
  default = []
}

variable "website" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      error_document = string
      index_document = string
    }
  ))
  default = []
}

