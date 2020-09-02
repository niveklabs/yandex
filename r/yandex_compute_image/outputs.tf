output "created_at" {
  description = "returns a string"
  value       = yandex_compute_image.this.created_at
}

output "folder_id" {
  description = "returns a string"
  value       = yandex_compute_image.this.folder_id
}

output "id" {
  description = "returns a string"
  value       = yandex_compute_image.this.id
}

output "min_disk_size" {
  description = "returns a number"
  value       = yandex_compute_image.this.min_disk_size
}

output "os_type" {
  description = "returns a string"
  value       = yandex_compute_image.this.os_type
}

output "product_ids" {
  description = "returns a set of string"
  value       = yandex_compute_image.this.product_ids
}

output "size" {
  description = "returns a number"
  value       = yandex_compute_image.this.size
}

output "source_disk" {
  description = "returns a string"
  value       = yandex_compute_image.this.source_disk
}

output "source_family" {
  description = "returns a string"
  value       = yandex_compute_image.this.source_family
}

output "source_image" {
  description = "returns a string"
  value       = yandex_compute_image.this.source_image
}

output "source_snapshot" {
  description = "returns a string"
  value       = yandex_compute_image.this.source_snapshot
}

output "source_url" {
  description = "returns a string"
  value       = yandex_compute_image.this.source_url
}

output "status" {
  description = "returns a string"
  value       = yandex_compute_image.this.status
}

output "this" {
  value = yandex_compute_image.this
}

