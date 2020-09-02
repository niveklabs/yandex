terraform {
  required_providers {
    yandex = ">= 0.43.0"
  }
}

resource "yandex_iam_service_account" "this" {
  description = var.description
  folder_id   = var.folder_id
  name        = var.name

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

