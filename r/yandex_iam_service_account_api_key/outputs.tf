output "created_at" {
  description = "returns a string"
  value       = yandex_iam_service_account_api_key.this.created_at
}

output "encrypted_secret_key" {
  description = "returns a string"
  value       = yandex_iam_service_account_api_key.this.encrypted_secret_key
}

output "id" {
  description = "returns a string"
  value       = yandex_iam_service_account_api_key.this.id
}

output "key_fingerprint" {
  description = "returns a string"
  value       = yandex_iam_service_account_api_key.this.key_fingerprint
}

output "secret_key" {
  description = "returns a string"
  value       = yandex_iam_service_account_api_key.this.secret_key
  sensitive   = true
}

output "this" {
  value = yandex_iam_service_account_api_key.this
}

