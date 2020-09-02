terraform {
  required_providers {
    yandex = ">= 0.42.0"
  }
}

resource "yandex_resourcemanager_cloud_iam_binding" "this" {
  cloud_id    = var.cloud_id
  members     = var.members
  role        = var.role
  sleep_after = var.sleep_after
}

