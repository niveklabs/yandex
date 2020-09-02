output "boot_disk" {
  description = "returns a list of object"
  value       = data.yandex_compute_instance.this.boot_disk
}

output "created_at" {
  description = "returns a string"
  value       = data.yandex_compute_instance.this.created_at
}

output "description" {
  description = "returns a string"
  value       = data.yandex_compute_instance.this.description
}

output "folder_id" {
  description = "returns a string"
  value       = data.yandex_compute_instance.this.folder_id
}

output "fqdn" {
  description = "returns a string"
  value       = data.yandex_compute_instance.this.fqdn
}

output "id" {
  description = "returns a string"
  value       = data.yandex_compute_instance.this.id
}

output "instance_id" {
  description = "returns a string"
  value       = data.yandex_compute_instance.this.instance_id
}

output "labels" {
  description = "returns a map of string"
  value       = data.yandex_compute_instance.this.labels
}

output "metadata" {
  description = "returns a map of string"
  value       = data.yandex_compute_instance.this.metadata
}

output "name" {
  description = "returns a string"
  value       = data.yandex_compute_instance.this.name
}

output "network_acceleration_type" {
  description = "returns a string"
  value       = data.yandex_compute_instance.this.network_acceleration_type
}

output "network_interface" {
  description = "returns a list of object"
  value       = data.yandex_compute_instance.this.network_interface
}

output "platform_id" {
  description = "returns a string"
  value       = data.yandex_compute_instance.this.platform_id
}

output "resources" {
  description = "returns a list of object"
  value       = data.yandex_compute_instance.this.resources
}

output "secondary_disk" {
  description = "returns a list of object"
  value       = data.yandex_compute_instance.this.secondary_disk
}

output "service_account_id" {
  description = "returns a string"
  value       = data.yandex_compute_instance.this.service_account_id
}

output "status" {
  description = "returns a string"
  value       = data.yandex_compute_instance.this.status
}

output "zone" {
  description = "returns a string"
  value       = data.yandex_compute_instance.this.zone
}

output "this" {
  value = yandex_compute_instance.this
}

