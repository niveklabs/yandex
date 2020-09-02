output "cluster_id" {
  description = "returns a string"
  value       = data.yandex_mdb_postgresql_cluster.this.cluster_id
}

output "config" {
  description = "returns a list of object"
  value       = data.yandex_mdb_postgresql_cluster.this.config
}

output "created_at" {
  description = "returns a string"
  value       = data.yandex_mdb_postgresql_cluster.this.created_at
}

output "database" {
  description = "returns a set of object"
  value       = data.yandex_mdb_postgresql_cluster.this.database
}

output "environment" {
  description = "returns a string"
  value       = data.yandex_mdb_postgresql_cluster.this.environment
}

output "folder_id" {
  description = "returns a string"
  value       = data.yandex_mdb_postgresql_cluster.this.folder_id
}

output "health" {
  description = "returns a string"
  value       = data.yandex_mdb_postgresql_cluster.this.health
}

output "host" {
  description = "returns a list of object"
  value       = data.yandex_mdb_postgresql_cluster.this.host
}

output "id" {
  description = "returns a string"
  value       = data.yandex_mdb_postgresql_cluster.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.yandex_mdb_postgresql_cluster.this.labels
}

output "name" {
  description = "returns a string"
  value       = data.yandex_mdb_postgresql_cluster.this.name
}

output "network_id" {
  description = "returns a string"
  value       = data.yandex_mdb_postgresql_cluster.this.network_id
}

output "status" {
  description = "returns a string"
  value       = data.yandex_mdb_postgresql_cluster.this.status
}

output "user" {
  description = "returns a set of object"
  value       = data.yandex_mdb_postgresql_cluster.this.user
}

output "this" {
  value = yandex_mdb_postgresql_cluster.this
}

