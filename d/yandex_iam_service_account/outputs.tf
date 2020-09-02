output "created_at" {
  description = "returns a string"
  value       = data.yandex_iam_service_account.this.created_at
}

output "description" {
  description = "returns a string"
  value       = data.yandex_iam_service_account.this.description
}

output "folder_id" {
  description = "returns a string"
  value       = data.yandex_iam_service_account.this.folder_id
}

output "id" {
  description = "returns a string"
  value       = data.yandex_iam_service_account.this.id
}

output "name" {
  description = "returns a string"
  value       = data.yandex_iam_service_account.this.name
}

output "service_account_id" {
  description = "returns a string"
  value       = data.yandex_iam_service_account.this.service_account_id
}

output "this" {
  value = yandex_iam_service_account.this
}

