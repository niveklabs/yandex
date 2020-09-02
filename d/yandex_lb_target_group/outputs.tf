output "created_at" {
  description = "returns a string"
  value       = data.yandex_lb_target_group.this.created_at
}

output "description" {
  description = "returns a string"
  value       = data.yandex_lb_target_group.this.description
}

output "folder_id" {
  description = "returns a string"
  value       = data.yandex_lb_target_group.this.folder_id
}

output "id" {
  description = "returns a string"
  value       = data.yandex_lb_target_group.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.yandex_lb_target_group.this.labels
}

output "name" {
  description = "returns a string"
  value       = data.yandex_lb_target_group.this.name
}

output "target" {
  description = "returns a set of object"
  value       = data.yandex_lb_target_group.this.target
}

output "target_group_id" {
  description = "returns a string"
  value       = data.yandex_lb_target_group.this.target_group_id
}

output "this" {
  value = yandex_lb_target_group.this
}

