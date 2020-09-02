terraform {
  required_providers {
    yandex = ">= 0.43.0"
  }
}

resource "yandex_resourcemanager_folder_iam_policy" "this" {
  folder_id   = var.folder_id
  policy_data = var.policy_data
}

