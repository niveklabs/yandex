terraform {
  required_providers {
    yandex = ">= 0.42.0"
  }
}

resource "yandex_resourcemanager_folder_iam_binding" "this" {
  folder_id   = var.folder_id
  members     = var.members
  role        = var.role
  sleep_after = var.sleep_after
}

