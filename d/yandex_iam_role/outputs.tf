output "id" {
  description = "returns a string"
  value       = data.yandex_iam_role.this.id
}

output "role_id" {
  description = "returns a string"
  value       = data.yandex_iam_role.this.role_id
}

output "this" {
  value = yandex_iam_role.this
}

