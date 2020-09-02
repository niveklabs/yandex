output "created_at" {
  description = "returns a string"
  value       = yandex_function.this.created_at
}

output "folder_id" {
  description = "returns a string"
  value       = yandex_function.this.folder_id
}

output "id" {
  description = "returns a string"
  value       = yandex_function.this.id
}

output "image_size" {
  description = "returns a number"
  value       = yandex_function.this.image_size
}

output "loggroup_id" {
  description = "returns a string"
  value       = yandex_function.this.loggroup_id
}

output "tags" {
  description = "returns a set of string"
  value       = yandex_function.this.tags
}

output "version" {
  description = "returns a string"
  value       = yandex_function.this.version
}

output "this" {
  value = yandex_function.this
}

