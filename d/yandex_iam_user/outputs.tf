output "default_email" {
  description = "returns a string"
  value       = data.yandex_iam_user.this.default_email
}

output "id" {
  description = "returns a string"
  value       = data.yandex_iam_user.this.id
}

output "login" {
  description = "returns a string"
  value       = data.yandex_iam_user.this.login
}

output "user_id" {
  description = "returns a string"
  value       = data.yandex_iam_user.this.user_id
}

output "this" {
  value = yandex_iam_user.this
}

