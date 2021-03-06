output "created_at" {
  description = "returns a string"
  value       = yandex_iam_service_account.this.created_at
}

output "folder_id" {
  description = "returns a string"
  value       = yandex_iam_service_account.this.folder_id
}

output "id" {
  description = "returns a string"
  value       = yandex_iam_service_account.this.id
}

output "this" {
  value = yandex_iam_service_account.this
}

