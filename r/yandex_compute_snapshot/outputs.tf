output "created_at" {
  description = "returns a string"
  value       = yandex_compute_snapshot.this.created_at
}

output "disk_size" {
  description = "returns a number"
  value       = yandex_compute_snapshot.this.disk_size
}

output "folder_id" {
  description = "returns a string"
  value       = yandex_compute_snapshot.this.folder_id
}

output "id" {
  description = "returns a string"
  value       = yandex_compute_snapshot.this.id
}

output "storage_size" {
  description = "returns a number"
  value       = yandex_compute_snapshot.this.storage_size
}

output "this" {
  value = yandex_compute_snapshot.this
}

