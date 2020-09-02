terraform {
  required_providers {
    yandex = ">= 0.43.0"
  }
}

resource "yandex_iam_service_account_iam_member" "this" {
  member             = var.member
  role               = var.role
  service_account_id = var.service_account_id
  sleep_after        = var.sleep_after
}

