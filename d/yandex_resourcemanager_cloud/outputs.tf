output "cloud_id" {
  description = "returns a string"
  value       = data.yandex_resourcemanager_cloud.this.cloud_id
}

output "created_at" {
  description = "returns a string"
  value       = data.yandex_resourcemanager_cloud.this.created_at
}

output "id" {
  description = "returns a string"
  value       = data.yandex_resourcemanager_cloud.this.id
}

output "name" {
  description = "returns a string"
  value       = data.yandex_resourcemanager_cloud.this.name
}

output "this" {
  value = yandex_resourcemanager_cloud.this
}

