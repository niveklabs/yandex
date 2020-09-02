output "arn" {
  description = "returns a string"
  value       = yandex_message_queue.this.arn
}

output "id" {
  description = "returns a string"
  value       = yandex_message_queue.this.id
}

output "name" {
  description = "returns a string"
  value       = yandex_message_queue.this.name
}

output "this" {
  value = yandex_message_queue.this
}

