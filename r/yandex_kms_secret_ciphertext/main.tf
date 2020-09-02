terraform {
  required_providers {
    yandex = ">= 0.42.0"
  }
}

resource "yandex_kms_secret_ciphertext" "this" {
  aad_context = var.aad_context
  key_id      = var.key_id
  plaintext   = var.plaintext

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      read   = timeouts.value["read"]
    }
  }

}

