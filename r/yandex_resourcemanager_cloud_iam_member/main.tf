terraform {
  required_providers {
    yandex = ">= 0.42.1"
  }
}

resource "yandex_resourcemanager_cloud_iam_member" "this" {
  cloud_id    = var.cloud_id
  member      = var.member
  role        = var.role
  sleep_after = var.sleep_after
}

