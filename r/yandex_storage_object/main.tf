terraform {
  required_providers {
    yandex = ">= 0.42.1"
  }
}

resource "yandex_storage_object" "this" {
  access_key     = var.access_key
  acl            = var.acl
  bucket         = var.bucket
  content        = var.content
  content_base64 = var.content_base64
  key            = var.key
  secret_key     = var.secret_key
  source         = var.source
}

