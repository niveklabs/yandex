output "created_at" {
  description = "returns a string"
  value       = yandex_compute_instance.this.created_at
}

output "folder_id" {
  description = "returns a string"
  value       = yandex_compute_instance.this.folder_id
}

output "fqdn" {
  description = "returns a string"
  value       = yandex_compute_instance.this.fqdn
}

output "hostname" {
  description = "returns a string"
  value       = yandex_compute_instance.this.hostname
}

output "id" {
  description = "returns a string"
  value       = yandex_compute_instance.this.id
}

output "service_account_id" {
  description = "returns a string"
  value       = yandex_compute_instance.this.service_account_id
}

output "status" {
  description = "returns a string"
  value       = yandex_compute_instance.this.status
}

output "zone" {
  description = "returns a string"
  value       = yandex_compute_instance.this.zone
}

output "this" {
  value = yandex_compute_instance.this
}

