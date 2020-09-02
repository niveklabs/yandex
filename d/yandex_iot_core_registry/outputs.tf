output "certificates" {
  description = "returns a set of string"
  value       = data.yandex_iot_core_registry.this.certificates
}

output "created_at" {
  description = "returns a string"
  value       = data.yandex_iot_core_registry.this.created_at
}

output "description" {
  description = "returns a string"
  value       = data.yandex_iot_core_registry.this.description
}

output "id" {
  description = "returns a string"
  value       = data.yandex_iot_core_registry.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.yandex_iot_core_registry.this.labels
}

output "passwords" {
  description = "returns a set of string"
  value       = data.yandex_iot_core_registry.this.passwords
}

output "this" {
  value = yandex_iot_core_registry.this
}

