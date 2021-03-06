terraform {
  required_providers {
    yandex = ">= 0.43.0"
  }
}

resource "yandex_resourcemanager_cloud_iam_member" "this" {
  cloud_id    = var.cloud_id
  member      = var.member
  role        = var.role
  sleep_after = var.sleep_after
}

