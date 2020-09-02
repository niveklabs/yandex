output "backup_window_start" {
  description = "returns a list of object"
  value       = data.yandex_mdb_mysql_cluster.this.backup_window_start
}

output "cluster_id" {
  description = "returns a string"
  value       = data.yandex_mdb_mysql_cluster.this.cluster_id
}

output "created_at" {
  description = "returns a string"
  value       = data.yandex_mdb_mysql_cluster.this.created_at
}

output "database" {
  description = "returns a set of object"
  value       = data.yandex_mdb_mysql_cluster.this.database
}

output "environment" {
  description = "returns a string"
  value       = data.yandex_mdb_mysql_cluster.this.environment
}

output "folder_id" {
  description = "returns a string"
  value       = data.yandex_mdb_mysql_cluster.this.folder_id
}

output "health" {
  description = "returns a string"
  value       = data.yandex_mdb_mysql_cluster.this.health
}

output "host" {
  description = "returns a list of object"
  value       = data.yandex_mdb_mysql_cluster.this.host
}

output "id" {
  description = "returns a string"
  value       = data.yandex_mdb_mysql_cluster.this.id
}

output "name" {
  description = "returns a string"
  value       = data.yandex_mdb_mysql_cluster.this.name
}

output "network_id" {
  description = "returns a string"
  value       = data.yandex_mdb_mysql_cluster.this.network_id
}

output "resources" {
  description = "returns a list of object"
  value       = data.yandex_mdb_mysql_cluster.this.resources
}

output "status" {
  description = "returns a string"
  value       = data.yandex_mdb_mysql_cluster.this.status
}

output "user" {
  description = "returns a set of object"
  value       = data.yandex_mdb_mysql_cluster.this.user
}

output "version" {
  description = "returns a string"
  value       = data.yandex_mdb_mysql_cluster.this.version
}

output "this" {
  value = yandex_mdb_mysql_cluster.this
}

