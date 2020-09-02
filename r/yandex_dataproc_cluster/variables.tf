variable "bucket" {
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
  description = "(required)"
  type        = string
}

variable "service_account_id" {
  description = "(required)"
  type        = string
}

variable "zone_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "cluster_config" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      hadoop = list(object(
        {
          properties      = map(string)
          services        = set(string)
          ssh_public_keys = set(string)
        }
      ))
      subcluster_spec = list(object(
        {
          hosts_count = number
          id          = string
          name        = string
          resources = list(object(
            {
              disk_size          = number
              disk_type_id       = string
              resource_preset_id = string
            }
          ))
          role      = string
          subnet_id = string
        }
      ))
      version_id = string
    }
  ))
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

