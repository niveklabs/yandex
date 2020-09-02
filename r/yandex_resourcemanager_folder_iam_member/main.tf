terraform {
  required_providers {
    yandex = ">= 0.43.0"
  }
}

resource "yandex_resourcemanager_folder_iam_member" "this" {
  folder_id   = var.folder_id
  member      = var.member
  role        = var.role
  sleep_after = var.sleep_after
}

