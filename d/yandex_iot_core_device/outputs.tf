output "aliases" {
  description = "returns a map of string"
  value       = data.yandex_iot_core_device.this.aliases
}

output "certificates" {
  description = "returns a set of string"
  value       = data.yandex_iot_core_device.this.certificates
}

output "created_at" {
  description = "returns a string"
  value       = data.yandex_iot_core_device.this.created_at
}

output "description" {
  description = "returns a string"
  value       = data.yandex_iot_core_device.this.description
}

output "id" {
  description = "returns a string"
  value       = data.yandex_iot_core_device.this.id
}

output "passwords" {
  description = "returns a set of string"
  value       = data.yandex_iot_core_device.this.passwords
}

output "registry_id" {
  description = "returns a string"
  value       = data.yandex_iot_core_device.this.registry_id
}

output "this" {
  value = yandex_iot_core_device.this
}

