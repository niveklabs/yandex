output "cluster_id" {
  description = "returns a string"
  value       = data.yandex_kubernetes_cluster.this.cluster_id
}

output "cluster_ipv4_range" {
  description = "returns a string"
  value       = data.yandex_kubernetes_cluster.this.cluster_ipv4_range
}

output "created_at" {
  description = "returns a string"
  value       = data.yandex_kubernetes_cluster.this.created_at
}

output "description" {
  description = "returns a string"
  value       = data.yandex_kubernetes_cluster.this.description
}

output "folder_id" {
  description = "returns a string"
  value       = data.yandex_kubernetes_cluster.this.folder_id
}

output "health" {
  description = "returns a string"
  value       = data.yandex_kubernetes_cluster.this.health
}

output "id" {
  description = "returns a string"
  value       = data.yandex_kubernetes_cluster.this.id
}

output "kms_provider" {
  description = "returns a list of object"
  value       = data.yandex_kubernetes_cluster.this.kms_provider
}

output "labels" {
  description = "returns a map of string"
  value       = data.yandex_kubernetes_cluster.this.labels
}

output "master" {
  description = "returns a list of object"
  value       = data.yandex_kubernetes_cluster.this.master
}

output "name" {
  description = "returns a string"
  value       = data.yandex_kubernetes_cluster.this.name
}

output "network_id" {
  description = "returns a string"
  value       = data.yandex_kubernetes_cluster.this.network_id
}

output "network_policy_provider" {
  description = "returns a string"
  value       = data.yandex_kubernetes_cluster.this.network_policy_provider
}

output "node_ipv4_cidr_mask_size" {
  description = "returns a number"
  value       = data.yandex_kubernetes_cluster.this.node_ipv4_cidr_mask_size
}

output "node_service_account_id" {
  description = "returns a string"
  value       = data.yandex_kubernetes_cluster.this.node_service_account_id
}

output "release_channel" {
  description = "returns a string"
  value       = data.yandex_kubernetes_cluster.this.release_channel
}

output "service_account_id" {
  description = "returns a string"
  value       = data.yandex_kubernetes_cluster.this.service_account_id
}

output "service_ipv4_range" {
  description = "returns a string"
  value       = data.yandex_kubernetes_cluster.this.service_ipv4_range
}

output "status" {
  description = "returns a string"
  value       = data.yandex_kubernetes_cluster.this.status
}

output "this" {
  value = yandex_kubernetes_cluster.this
}

