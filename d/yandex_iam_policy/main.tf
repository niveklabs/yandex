terraform {
  required_providers {
    yandex = ">= 0.42.1"
  }
}

data "yandex_iam_policy" "this" {

  dynamic "binding" {
    for_each = var.binding
    content {
      members = binding.value["members"]
      role    = binding.value["role"]
    }
  }

}

