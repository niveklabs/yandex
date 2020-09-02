output "created_at" {
  description = "returns a string"
  value       = data.yandex_compute_snapshot.this.created_at
}

output "description" {
  description = "returns a string"
  value       = data.yandex_compute_snapshot.this.description
}

output "disk_size" {
  description = "returns a number"
  value       = data.yandex_compute_snapshot.this.disk_size
}

output "folder_id" {
  description = "returns a string"
  value       = data.yandex_compute_snapshot.this.folder_id
}

output "id" {
  description = "returns a string"
  value       = data.yandex_compute_snapshot.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.yandex_compute_snapshot.this.labels
}

output "name" {
  description = "returns a string"
  value       = data.yandex_compute_snapshot.this.name
}

output "product_ids" {
  description = "returns a list of string"
  value       = data.yandex_compute_snapshot.this.product_ids
}

output "snapshot_id" {
  description = "returns a string"
  value       = data.yandex_compute_snapshot.this.snapshot_id
}

output "source_disk_id" {
  description = "returns a string"
  value       = data.yandex_compute_snapshot.this.source_disk_id
}

output "status" {
  description = "returns a string"
  value       = data.yandex_compute_snapshot.this.status
}

output "storage_size" {
  description = "returns a number"
  value       = data.yandex_compute_snapshot.this.storage_size
}

output "this" {
  value = yandex_compute_snapshot.this
}

