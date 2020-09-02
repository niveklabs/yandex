terraform {
  required_providers {
    yandex = ">= 0.43.0"
  }
}

resource "yandex_function_trigger" "this" {
  description = var.description
  folder_id   = var.folder_id
  labels      = var.labels
  name        = var.name

  dynamic "dlq" {
    for_each = var.dlq
    content {
      queue_id           = dlq.value["queue_id"]
      service_account_id = dlq.value["service_account_id"]
    }
  }

  dynamic "function" {
    for_each = var.function
    content {
      id                 = function.value["id"]
      retry_attempts     = function.value["retry_attempts"]
      retry_interval     = function.value["retry_interval"]
      service_account_id = function.value["service_account_id"]
      tag                = function.value["tag"]
    }
  }

  dynamic "iot" {
    for_each = var.iot
    content {
      device_id   = iot.value["device_id"]
      registry_id = iot.value["registry_id"]
      topic       = iot.value["topic"]
    }
  }

  dynamic "message_queue" {
    for_each = var.message_queue
    content {
      batch_cutoff       = message_queue.value["batch_cutoff"]
      batch_size         = message_queue.value["batch_size"]
      queue_id           = message_queue.value["queue_id"]
      service_account_id = message_queue.value["service_account_id"]
      visibility_timeout = message_queue.value["visibility_timeout"]
    }
  }

  dynamic "object_storage" {
    for_each = var.object_storage
    content {
      bucket_id = object_storage.value["bucket_id"]
      create    = object_storage.value["create"]
      delete    = object_storage.value["delete"]
      prefix    = object_storage.value["prefix"]
      suffix    = object_storage.value["suffix"]
      update    = object_storage.value["update"]
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

  dynamic "timer" {
    for_each = var.timer
    content {
      cron_expression = timer.value["cron_expression"]
    }
  }

}

