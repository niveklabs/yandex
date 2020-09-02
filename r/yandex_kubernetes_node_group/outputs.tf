output "created_at" {
  description = "returns a string"
  value       = yandex_kubernetes_node_group.this.created_at
}

output "description" {
  description = "returns a string"
  value       = yandex_kubernetes_node_group.this.description
}

output "id" {
  description = "returns a string"
  value       = yandex_kubernetes_node_group.this.id
}

output "instance_group_id" {
  description = "returns a string"
  value       = yandex_kubernetes_node_group.this.instance_group_id
}

output "labels" {
  description = "returns a map of string"
  value       = yandex_kubernetes_node_group.this.labels
}

output "name" {
  description = "returns a string"
  value       = yandex_kubernetes_node_group.this.name
}

output "status" {
  description = "returns a string"
  value       = yandex_kubernetes_node_group.this.status
}

output "version" {
  description = "returns a string"
  value       = yandex_kubernetes_node_group.this.version
}

output "version_info" {
  description = "returns a list of object"
  value       = yandex_kubernetes_node_group.this.version_info
}

output "this" {
  value = yandex_kubernetes_node_group.this
}

