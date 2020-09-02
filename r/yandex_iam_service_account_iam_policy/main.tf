terraform {
  required_providers {
    yandex = ">= 0.42.0"
  }
}

resource "yandex_iam_service_account_iam_policy" "this" {
  policy_data        = var.policy_data
  service_account_id = var.service_account_id
}

