variable "cluster_ipv4_range" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "description" {
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

variable "name" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "network_id" {
  description = "(required)"
  type        = string
}

variable "network_policy_provider" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "node_ipv4_cidr_mask_size" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "node_service_account_id" {
  description = "(required)"
  type        = string
}

variable "release_channel" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "service_account_id" {
  description = "(required)"
  type        = string
}

variable "service_ipv4_range" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "kms_provider" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      key_id = string
    }
  ))
  default = []
}

variable "master" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      cluster_ca_certificate = string
      external_v4_address    = string
      external_v4_endpoint   = string
      internal_v4_address    = string
      internal_v4_endpoint   = string
      maintenance_policy = list(object(
        {
          auto_upgrade = bool
          maintenance_window = set(object(
            {
              day        = string
              duration   = string
              start_time = string
            }
          ))
        }
      ))
      public_ip = bool
      regional = list(object(
        {
          location = list(object(
            {
              subnet_id = string
              zone      = string
            }
          ))
          region = string
        }
      ))
      version = string
      version_info = list(object(
        {
          current_version        = string
          new_revision_available = bool
          new_revision_summary   = string
          version_deprecated     = bool
        }
      ))
      zonal = list(object(
        {
          subnet_id = string
          zone      = string
        }
      ))
    }
  ))
}

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      create = string
      delete = string
      read   = string
      update = string
    }
  ))
  default = []
}

