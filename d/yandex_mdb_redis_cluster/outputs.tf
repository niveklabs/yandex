output "cluster_id" {
  description = "returns a string"
  value       = data.yandex_mdb_redis_cluster.this.cluster_id
}

output "config" {
  description = "returns a list of object"
  value       = data.yandex_mdb_redis_cluster.this.config
}

output "created_at" {
  description = "returns a string"
  value       = data.yandex_mdb_redis_cluster.this.created_at
}

output "description" {
  description = "returns a string"
  value       = data.yandex_mdb_redis_cluster.this.description
}

output "environment" {
  description = "returns a string"
  value       = data.yandex_mdb_redis_cluster.this.environment
}

output "folder_id" {
  description = "returns a string"
  value       = data.yandex_mdb_redis_cluster.this.folder_id
}

output "health" {
  description = "returns a string"
  value       = data.yandex_mdb_redis_cluster.this.health
}

output "host" {
  description = "returns a list of object"
  value       = data.yandex_mdb_redis_cluster.this.host
}

output "id" {
  description = "returns a string"
  value       = data.yandex_mdb_redis_cluster.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.yandex_mdb_redis_cluster.this.labels
}

output "name" {
  description = "returns a string"
  value       = data.yandex_mdb_redis_cluster.this.name
}

output "network_id" {
  description = "returns a string"
  value       = data.yandex_mdb_redis_cluster.this.network_id
}

output "resources" {
  description = "returns a list of object"
  value       = data.yandex_mdb_redis_cluster.this.resources
}

output "sharded" {
  description = "returns a bool"
  value       = data.yandex_mdb_redis_cluster.this.sharded
}

output "status" {
  description = "returns a string"
  value       = data.yandex_mdb_redis_cluster.this.status
}

output "this" {
  value = yandex_mdb_redis_cluster.this
}

