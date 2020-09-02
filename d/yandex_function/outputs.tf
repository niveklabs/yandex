output "created_at" {
  description = "returns a string"
  value       = data.yandex_function.this.created_at
}

output "description" {
  description = "returns a string"
  value       = data.yandex_function.this.description
}

output "entrypoint" {
  description = "returns a string"
  value       = data.yandex_function.this.entrypoint
}

output "environment" {
  description = "returns a map of string"
  value       = data.yandex_function.this.environment
}

output "execution_timeout" {
  description = "returns a string"
  value       = data.yandex_function.this.execution_timeout
}

output "id" {
  description = "returns a string"
  value       = data.yandex_function.this.id
}

output "image_size" {
  description = "returns a number"
  value       = data.yandex_function.this.image_size
}

output "labels" {
  description = "returns a map of string"
  value       = data.yandex_function.this.labels
}

output "loggroup_id" {
  description = "returns a string"
  value       = data.yandex_function.this.loggroup_id
}

output "memory" {
  description = "returns a number"
  value       = data.yandex_function.this.memory
}

output "runtime" {
  description = "returns a string"
  value       = data.yandex_function.this.runtime
}

output "service_account_id" {
  description = "returns a string"
  value       = data.yandex_function.this.service_account_id
}

output "tags" {
  description = "returns a set of string"
  value       = data.yandex_function.this.tags
}

output "version" {
  description = "returns a string"
  value       = data.yandex_function.this.version
}

output "this" {
  value = yandex_function.this
}

