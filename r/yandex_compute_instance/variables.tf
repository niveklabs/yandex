variable "allow_stopping_for_update" {
  description = "(optional)"
  type        = bool
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

variable "hostname" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "metadata" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "network_acceleration_type" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "platform_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "service_account_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "zone" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "boot_disk" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      auto_delete = bool
      device_name = string
      disk_id     = string
      initialize_params = list(object(
        {
          description = string
          image_id    = string
          name        = string
          size        = number
          snapshot_id = string
          type        = string
        }
      ))
      mode = string
    }
  ))
}

variable "network_interface" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      index              = number
      ip_address         = string
      ipv4               = bool
      ipv6               = bool
      ipv6_address       = string
      mac_address        = string
      nat                = bool
      nat_ip_address     = string
      nat_ip_version     = string
      security_group_ids = set(string)
      subnet_id          = string
    }
  ))
}

variable "resources" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      core_fraction = number
      cores         = number
      gpus          = number
      memory        = number
    }
  ))
}

variable "scheduling_policy" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      preemptible = bool
    }
  ))
  default = []
}

variable "secondary_disk" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      auto_delete = bool
      device_name = string
      disk_id     = string
      mode        = string
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

