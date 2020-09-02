output "created_at" {
  description = "returns a string"
  value       = data.yandex_compute_disk.this.created_at
}

output "description" {
  description = "returns a string"
  value       = data.yandex_compute_disk.this.description
}

output "disk_id" {
  description = "returns a string"
  value       = data.yandex_compute_disk.this.disk_id
}

output "folder_id" {
  description = "returns a string"
  value       = data.yandex_compute_disk.this.folder_id
}

output "id" {
  description = "returns a string"
  value       = data.yandex_compute_disk.this.id
}

output "image_id" {
  description = "returns a string"
  value       = data.yandex_compute_disk.this.image_id
}

output "instance_ids" {
  description = "returns a list of string"
  value       = data.yandex_compute_disk.this.instance_ids
}

output "labels" {
  description = "returns a map of string"
  value       = data.yandex_compute_disk.this.labels
}

output "name" {
  description = "returns a string"
  value       = data.yandex_compute_disk.this.name
}

output "product_ids" {
  description = "returns a list of string"
  value       = data.yandex_compute_disk.this.product_ids
}

output "size" {
  description = "returns a number"
  value       = data.yandex_compute_disk.this.size
}

output "snapshot_id" {
  description = "returns a string"
  value       = data.yandex_compute_disk.this.snapshot_id
}

output "status" {
  description = "returns a string"
  value       = data.yandex_compute_disk.this.status
}

output "type" {
  description = "returns a string"
  value       = data.yandex_compute_disk.this.type
}

output "zone" {
  description = "returns a string"
  value       = data.yandex_compute_disk.this.zone
}

output "this" {
  value = yandex_compute_disk.this
}

