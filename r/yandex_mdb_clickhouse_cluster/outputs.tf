output "created_at" {
  description = "returns a string"
  value       = yandex_mdb_clickhouse_cluster.this.created_at
}

output "folder_id" {
  description = "returns a string"
  value       = yandex_mdb_clickhouse_cluster.this.folder_id
}

output "health" {
  description = "returns a string"
  value       = yandex_mdb_clickhouse_cluster.this.health
}

output "id" {
  description = "returns a string"
  value       = yandex_mdb_clickhouse_cluster.this.id
}

output "status" {
  description = "returns a string"
  value       = yandex_mdb_clickhouse_cluster.this.status
}

output "version" {
  description = "returns a string"
  value       = yandex_mdb_clickhouse_cluster.this.version
}

output "this" {
  value = yandex_mdb_clickhouse_cluster.this
}

