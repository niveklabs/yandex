output "created_at" {
  description = "returns a string"
  value       = data.yandex_compute_image.this.created_at
}

output "description" {
  description = "returns a string"
  value       = data.yandex_compute_image.this.description
}

output "family" {
  description = "returns a string"
  value       = data.yandex_compute_image.this.family
}

output "folder_id" {
  description = "returns a string"
  value       = data.yandex_compute_image.this.folder_id
}

output "id" {
  description = "returns a string"
  value       = data.yandex_compute_image.this.id
}

output "image_id" {
  description = "returns a string"
  value       = data.yandex_compute_image.this.image_id
}

output "labels" {
  description = "returns a map of string"
  value       = data.yandex_compute_image.this.labels
}

output "min_disk_size" {
  description = "returns a number"
  value       = data.yandex_compute_image.this.min_disk_size
}

output "name" {
  description = "returns a string"
  value       = data.yandex_compute_image.this.name
}

output "os_type" {
  description = "returns a string"
  value       = data.yandex_compute_image.this.os_type
}

output "product_ids" {
  description = "returns a set of string"
  value       = data.yandex_compute_image.this.product_ids
}

output "size" {
  description = "returns a number"
  value       = data.yandex_compute_image.this.size
}

output "status" {
  description = "returns a string"
  value       = data.yandex_compute_image.this.status
}

output "this" {
  value = yandex_compute_image.this
}

