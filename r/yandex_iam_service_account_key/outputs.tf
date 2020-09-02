output "created_at" {
  description = "returns a string"
  value       = yandex_iam_service_account_key.this.created_at
}

output "encrypted_private_key" {
  description = "returns a string"
  value       = yandex_iam_service_account_key.this.encrypted_private_key
}

output "id" {
  description = "returns a string"
  value       = yandex_iam_service_account_key.this.id
}

output "key_fingerprint" {
  description = "returns a string"
  value       = yandex_iam_service_account_key.this.key_fingerprint
}

output "private_key" {
  description = "returns a string"
  value       = yandex_iam_service_account_key.this.private_key
  sensitive   = true
}

output "public_key" {
  description = "returns a string"
  value       = yandex_iam_service_account_key.this.public_key
}

output "this" {
  value = yandex_iam_service_account_key.this
}

