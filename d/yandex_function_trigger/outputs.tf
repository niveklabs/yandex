output "created_at" {
  description = "returns a string"
  value       = data.yandex_function_trigger.this.created_at
}

output "description" {
  description = "returns a string"
  value       = data.yandex_function_trigger.this.description
}

output "dlq" {
  description = "returns a list of object"
  value       = data.yandex_function_trigger.this.dlq
}

output "function" {
  description = "returns a list of object"
  value       = data.yandex_function_trigger.this.function
}

output "id" {
  description = "returns a string"
  value       = data.yandex_function_trigger.this.id
}

output "iot" {
  description = "returns a list of object"
  value       = data.yandex_function_trigger.this.iot
}

output "labels" {
  description = "returns a map of string"
  value       = data.yandex_function_trigger.this.labels
}

output "message_queue" {
  description = "returns a list of object"
  value       = data.yandex_function_trigger.this.message_queue
}

output "object_storage" {
  description = "returns a list of object"
  value       = data.yandex_function_trigger.this.object_storage
}

output "timer" {
  description = "returns a list of object"
  value       = data.yandex_function_trigger.this.timer
}

output "this" {
  value = yandex_function_trigger.this
}

