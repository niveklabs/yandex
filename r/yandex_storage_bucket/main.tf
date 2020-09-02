terraform {
  required_providers {
    yandex = ">= 0.42.0"
  }
}

resource "yandex_storage_bucket" "this" {
  access_key       = var.access_key
  acl              = var.acl
  bucket           = var.bucket
  bucket_prefix    = var.bucket_prefix
  force_destroy    = var.force_destroy
  secret_key       = var.secret_key
  website_domain   = var.website_domain
  website_endpoint = var.website_endpoint

  dynamic "cors_rule" {
    for_each = var.cors_rule
    content {
      allowed_headers = cors_rule.value["allowed_headers"]
      allowed_methods = cors_rule.value["allowed_methods"]
      allowed_origins = cors_rule.value["allowed_origins"]
      expose_headers  = cors_rule.value["expose_headers"]
      max_age_seconds = cors_rule.value["max_age_seconds"]
    }
  }

  dynamic "grant" {
    for_each = var.grant
    content {
      id          = grant.value["id"]
      permissions = grant.value["permissions"]
      type        = grant.value["type"]
      uri         = grant.value["uri"]
    }
  }

  dynamic "website" {
    for_each = var.website
    content {
      error_document = website.value["error_document"]
      index_document = website.value["index_document"]
    }
  }

}

