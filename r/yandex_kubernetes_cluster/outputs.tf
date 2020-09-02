output "cluster_ipv4_range" {
  description = "returns a string"
  value       = yandex_kubernetes_cluster.this.cluster_ipv4_range
}

output "created_at" {
  description = "returns a string"
  value       = yandex_kubernetes_cluster.this.created_at
}

output "description" {
  description = "returns a string"
  value       = yandex_kubernetes_cluster.this.description
}

output "folder_id" {
  description = "returns a string"
  value       = yandex_kubernetes_cluster.this.folder_id
}

output "health" {
  description = "returns a string"
  value       = yandex_kubernetes_cluster.this.health
}

output "id" {
  description = "returns a string"
  value       = yandex_kubernetes_cluster.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = yandex_kubernetes_cluster.this.labels
}

output "name" {
  description = "returns a string"
  value       = yandex_kubernetes_cluster.this.name
}

output "release_channel" {
  description = "returns a string"
  value       = yandex_kubernetes_cluster.this.release_channel
}

output "service_ipv4_range" {
  description = "returns a string"
  value       = yandex_kubernetes_cluster.this.service_ipv4_range
}

output "status" {
  description = "returns a string"
  value       = yandex_kubernetes_cluster.this.status
}

output "this" {
  value = yandex_kubernetes_cluster.this
}

