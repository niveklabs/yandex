output "cloud_id" {
  description = "returns a string"
  value       = data.yandex_resourcemanager_folder.this.cloud_id
}

output "created_at" {
  description = "returns a string"
  value       = data.yandex_resourcemanager_folder.this.created_at
}

output "description" {
  description = "returns a string"
  value       = data.yandex_resourcemanager_folder.this.description
}

output "folder_id" {
  description = "returns a string"
  value       = data.yandex_resourcemanager_folder.this.folder_id
}

output "id" {
  description = "returns a string"
  value       = data.yandex_resourcemanager_folder.this.id
}

output "name" {
  description = "returns a string"
  value       = data.yandex_resourcemanager_folder.this.name
}

output "status" {
  description = "returns a string"
  value       = data.yandex_resourcemanager_folder.this.status
}

output "this" {
  value = yandex_resourcemanager_folder.this
}

