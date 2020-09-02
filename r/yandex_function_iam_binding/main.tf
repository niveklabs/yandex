terraform {
  required_providers {
    yandex = ">= 0.42.1"
  }
}

resource "yandex_function_iam_binding" "this" {
  function_id = var.function_id
  members     = var.members
  role        = var.role
  sleep_after = var.sleep_after
}

