variable "folder_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "instance_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "name" {
  description = "(optional)"
  type        = string
  default     = null
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

