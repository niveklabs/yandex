output "id" {
  description = "returns a string"
  value       = data.yandex_iam_policy.this.id
}

output "policy_data" {
  description = "returns a string"
  value       = data.yandex_iam_policy.this.policy_data
}

output "this" {
  value = yandex_iam_policy.this
}

