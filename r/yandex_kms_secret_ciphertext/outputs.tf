output "ciphertext" {
  description = "returns a string"
  value       = yandex_kms_secret_ciphertext.this.ciphertext
}

output "id" {
  description = "returns a string"
  value       = yandex_kms_secret_ciphertext.this.id
}

output "this" {
  value = yandex_kms_secret_ciphertext.this
}

