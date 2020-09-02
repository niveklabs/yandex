output "arn" {
  description = "returns a string"
  value       = data.yandex_message_queue.this.arn
}

output "id" {
  description = "returns a string"
  value       = data.yandex_message_queue.this.id
}

output "url" {
  description = "returns a string"
  value       = data.yandex_message_queue.this.url
}

output "this" {
  value = yandex_message_queue.this
}

