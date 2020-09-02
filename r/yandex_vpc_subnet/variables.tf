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

variable "route_table_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "v4_cidr_blocks" {
  description = "(required)"
  type        = list(string)
}

variable "zone" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "dhcp_options" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      domain_name         = string
      domain_name_servers = list(string)
      ntp_servers         = list(string)
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

