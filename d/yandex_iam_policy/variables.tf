variable "binding" {
  description = "nested mode: NestingSet, min items: 1, max items: 0"
  type = set(object(
    {
      members = set(string)
      role    = string
    }
  ))
}

