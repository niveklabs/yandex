output "cluster_config" {
  description = "returns a list of object"
  value       = data.yandex_mdb_mongodb_cluster.this.cluster_config
}

output "cluster_id" {
  description = "returns a string"
  value       = data.yandex_mdb_mongodb_cluster.this.cluster_id
}

output "created_at" {
  description = "returns a string"
  value       = data.yandex_mdb_mongodb_cluster.this.created_at
}

output "database" {
  description = "returns a set of object"
  value       = data.yandex_mdb_mongodb_cluster.this.database
}

output "description" {
  description = "returns a string"
  value       = data.yandex_mdb_mongodb_cluster.this.description
}

output "environment" {
  description = "returns a string"
  value       = data.yandex_mdb_mongodb_cluster.this.environment
}

output "folder_id" {
  description = "returns a string"
  value       = data.yandex_mdb_mongodb_cluster.this.folder_id
}

output "health" {
  description = "returns a string"
  value       = data.yandex_mdb_mongodb_cluster.this.health
}

output "host" {
  description = "returns a list of object"
  value       = data.yandex_mdb_mongodb_cluster.this.host
}

output "id" {
  description = "returns a string"
  value       = data.yandex_mdb_mongodb_cluster.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.yandex_mdb_mongodb_cluster.this.labels
}

output "name" {
  description = "returns a string"
  value       = data.yandex_mdb_mongodb_cluster.this.name
}

output "network_id" {
  description = "returns a string"
  value       = data.yandex_mdb_mongodb_cluster.this.network_id
}

output "resources" {
  description = "returns a list of object"
  value       = data.yandex_mdb_mongodb_cluster.this.resources
}

output "sharded" {
  description = "returns a bool"
  value       = data.yandex_mdb_mongodb_cluster.this.sharded
}

output "status" {
  description = "returns a string"
  value       = data.yandex_mdb_mongodb_cluster.this.status
}

output "user" {
  description = "returns a set of object"
  value       = data.yandex_mdb_mongodb_cluster.this.user
}

output "this" {
  value = yandex_mdb_mongodb_cluster.this
}

