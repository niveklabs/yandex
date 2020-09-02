output "access" {
  description = "returns a list of object"
  value       = data.yandex_mdb_clickhouse_cluster.this.access
}

output "backup_window_start" {
  description = "returns a list of object"
  value       = data.yandex_mdb_clickhouse_cluster.this.backup_window_start
}

output "clickhouse" {
  description = "returns a list of object"
  value       = data.yandex_mdb_clickhouse_cluster.this.clickhouse
}

output "cluster_id" {
  description = "returns a string"
  value       = data.yandex_mdb_clickhouse_cluster.this.cluster_id
}

output "created_at" {
  description = "returns a string"
  value       = data.yandex_mdb_clickhouse_cluster.this.created_at
}

output "database" {
  description = "returns a set of object"
  value       = data.yandex_mdb_clickhouse_cluster.this.database
}

output "description" {
  description = "returns a string"
  value       = data.yandex_mdb_clickhouse_cluster.this.description
}

output "environment" {
  description = "returns a string"
  value       = data.yandex_mdb_clickhouse_cluster.this.environment
}

output "folder_id" {
  description = "returns a string"
  value       = data.yandex_mdb_clickhouse_cluster.this.folder_id
}

output "health" {
  description = "returns a string"
  value       = data.yandex_mdb_clickhouse_cluster.this.health
}

output "host" {
  description = "returns a list of object"
  value       = data.yandex_mdb_clickhouse_cluster.this.host
}

output "id" {
  description = "returns a string"
  value       = data.yandex_mdb_clickhouse_cluster.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.yandex_mdb_clickhouse_cluster.this.labels
}

output "name" {
  description = "returns a string"
  value       = data.yandex_mdb_clickhouse_cluster.this.name
}

output "network_id" {
  description = "returns a string"
  value       = data.yandex_mdb_clickhouse_cluster.this.network_id
}

output "status" {
  description = "returns a string"
  value       = data.yandex_mdb_clickhouse_cluster.this.status
}

output "user" {
  description = "returns a set of object"
  value       = data.yandex_mdb_clickhouse_cluster.this.user
}

output "version" {
  description = "returns a string"
  value       = data.yandex_mdb_clickhouse_cluster.this.version
}

output "zookeeper" {
  description = "returns a list of object"
  value       = data.yandex_mdb_clickhouse_cluster.this.zookeeper
}

output "this" {
  value = yandex_mdb_clickhouse_cluster.this
}

