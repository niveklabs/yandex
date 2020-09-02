output "cluster_id" {
  description = "returns a string"
  value       = yandex_mdb_mongodb_cluster.this.cluster_id
}

output "created_at" {
  description = "returns a string"
  value       = yandex_mdb_mongodb_cluster.this.created_at
}

output "description" {
  description = "returns a string"
  value       = yandex_mdb_mongodb_cluster.this.description
}

output "folder_id" {
  description = "returns a string"
  value       = yandex_mdb_mongodb_cluster.this.folder_id
}

output "health" {
  description = "returns a string"
  value       = yandex_mdb_mongodb_cluster.this.health
}

output "id" {
  description = "returns a string"
  value       = yandex_mdb_mongodb_cluster.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = yandex_mdb_mongodb_cluster.this.labels
}

output "sharded" {
  description = "returns a bool"
  value       = yandex_mdb_mongodb_cluster.this.sharded
}

output "status" {
  description = "returns a string"
  value       = yandex_mdb_mongodb_cluster.this.status
}

output "this" {
  value = yandex_mdb_mongodb_cluster.this
}

