output "created_at" {
  description = "returns a string"
  value       = yandex_compute_disk.this.created_at
}

output "folder_id" {
  description = "returns a string"
  value       = yandex_compute_disk.this.folder_id
}

output "id" {
  description = "returns a string"
  value       = yandex_compute_disk.this.id
}

output "product_ids" {
  description = "returns a list of string"
  value       = yandex_compute_disk.this.product_ids
}

output "status" {
  description = "returns a string"
  value       = yandex_compute_disk.this.status
}

output "zone" {
  description = "returns a string"
  value       = yandex_compute_disk.this.zone
}

output "this" {
  value = yandex_compute_disk.this
}

