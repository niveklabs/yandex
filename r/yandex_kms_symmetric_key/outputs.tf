output "created_at" {
  description = "returns a string"
  value       = yandex_kms_symmetric_key.this.created_at
}

output "folder_id" {
  description = "returns a string"
  value       = yandex_kms_symmetric_key.this.folder_id
}

output "id" {
  description = "returns a string"
  value       = yandex_kms_symmetric_key.this.id
}

output "rotated_at" {
  description = "returns a string"
  value       = yandex_kms_symmetric_key.this.rotated_at
}

output "status" {
  description = "returns a string"
  value       = yandex_kms_symmetric_key.this.status
}

output "this" {
  value = yandex_kms_symmetric_key.this
}

