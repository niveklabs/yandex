output "cloud_id" {
  description = "returns a string"
  value       = data.yandex_client_config.this.cloud_id
}

output "folder_id" {
  description = "returns a string"
  value       = data.yandex_client_config.this.folder_id
}

output "iam_token" {
  description = "returns a string"
  value       = data.yandex_client_config.this.iam_token
  sensitive   = true
}

output "id" {
  description = "returns a string"
  value       = data.yandex_client_config.this.id
}

output "zone" {
  description = "returns a string"
  value       = data.yandex_client_config.this.zone
}

output "this" {
  value = yandex_client_config.this
}

