output "created_at" {
  description = "returns a string"
  value       = data.yandex_container_registry.this.created_at
}

output "folder_id" {
  description = "returns a string"
  value       = data.yandex_container_registry.this.folder_id
}

output "id" {
  description = "returns a string"
  value       = data.yandex_container_registry.this.id
}

output "name" {
  description = "returns a string"
  value       = data.yandex_container_registry.this.name
}

output "registry_id" {
  description = "returns a string"
  value       = data.yandex_container_registry.this.registry_id
}

output "status" {
  description = "returns a string"
  value       = data.yandex_container_registry.this.status
}

output "this" {
  value = yandex_container_registry.this
}

