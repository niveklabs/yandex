terraform {
  required_providers {
    yandex = ">= 0.42.1"
  }
}

resource "yandex_message_queue" "this" {
  access_key                  = var.access_key
  content_based_deduplication = var.content_based_deduplication
  delay_seconds               = var.delay_seconds
  fifo_queue                  = var.fifo_queue
  max_message_size            = var.max_message_size
  message_retention_seconds   = var.message_retention_seconds
  name                        = var.name
  name_prefix                 = var.name_prefix
  receive_wait_time_seconds   = var.receive_wait_time_seconds
  redrive_policy              = var.redrive_policy
  secret_key                  = var.secret_key
  visibility_timeout_seconds  = var.visibility_timeout_seconds
}

