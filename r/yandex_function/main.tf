terraform {
  required_providers {
    yandex = ">= 0.42.1"
  }
}

resource "yandex_function" "this" {
  description        = var.description
  entrypoint         = var.entrypoint
  environment        = var.environment
  execution_timeout  = var.execution_timeout
  folder_id          = var.folder_id
  labels             = var.labels
  memory             = var.memory
  name               = var.name
  runtime            = var.runtime
  service_account_id = var.service_account_id
  tags               = var.tags
  user_hash          = var.user_hash

  dynamic "content" {
    for_each = var.content
    content {
      zip_filename = content.value["zip_filename"]
    }
  }

  dynamic "package" {
    for_each = var.package
    content {
      bucket_name = package.value["bucket_name"]
      object_name = package.value["object_name"]
      sha_256     = package.value["sha_256"]
    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

