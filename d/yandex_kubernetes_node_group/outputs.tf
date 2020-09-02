output "allocation_policy" {
  description = "returns a list of object"
  value       = data.yandex_kubernetes_node_group.this.allocation_policy
}

output "allowed_unsafe_sysctls" {
  description = "returns a list of string"
  value       = data.yandex_kubernetes_node_group.this.allowed_unsafe_sysctls
}

output "cluster_id" {
  description = "returns a string"
  value       = data.yandex_kubernetes_node_group.this.cluster_id
}

output "created_at" {
  description = "returns a string"
  value       = data.yandex_kubernetes_node_group.this.created_at
}

output "deploy_policy" {
  description = "returns a list of object"
  value       = data.yandex_kubernetes_node_group.this.deploy_policy
}

output "description" {
  description = "returns a string"
  value       = data.yandex_kubernetes_node_group.this.description
}

output "folder_id" {
  description = "returns a string"
  value       = data.yandex_kubernetes_node_group.this.folder_id
}

output "id" {
  description = "returns a string"
  value       = data.yandex_kubernetes_node_group.this.id
}

output "instance_group_id" {
  description = "returns a string"
  value       = data.yandex_kubernetes_node_group.this.instance_group_id
}

output "instance_template" {
  description = "returns a list of object"
  value       = data.yandex_kubernetes_node_group.this.instance_template
}

output "labels" {
  description = "returns a map of string"
  value       = data.yandex_kubernetes_node_group.this.labels
}

output "maintenance_policy" {
  description = "returns a list of object"
  value       = data.yandex_kubernetes_node_group.this.maintenance_policy
}

output "name" {
  description = "returns a string"
  value       = data.yandex_kubernetes_node_group.this.name
}

output "node_group_id" {
  description = "returns a string"
  value       = data.yandex_kubernetes_node_group.this.node_group_id
}

output "node_labels" {
  description = "returns a map of string"
  value       = data.yandex_kubernetes_node_group.this.node_labels
}

output "node_taints" {
  description = "returns a list of string"
  value       = data.yandex_kubernetes_node_group.this.node_taints
}

output "scale_policy" {
  description = "returns a list of object"
  value       = data.yandex_kubernetes_node_group.this.scale_policy
}

output "status" {
  description = "returns a string"
  value       = data.yandex_kubernetes_node_group.this.status
}

output "version_info" {
  description = "returns a list of object"
  value       = data.yandex_kubernetes_node_group.this.version_info
}

output "this" {
  value = yandex_kubernetes_node_group.this
}

