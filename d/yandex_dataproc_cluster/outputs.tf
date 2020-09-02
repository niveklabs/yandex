output "bucket" {
  description = "returns a string"
  value       = data.yandex_dataproc_cluster.this.bucket
}

output "cluster_config" {
  description = "returns a list of object"
  value       = data.yandex_dataproc_cluster.this.cluster_config
}

output "cluster_id" {
  description = "returns a string"
  value       = data.yandex_dataproc_cluster.this.cluster_id
}

output "created_at" {
  description = "returns a string"
  value       = data.yandex_dataproc_cluster.this.created_at
}

output "description" {
  description = "returns a string"
  value       = data.yandex_dataproc_cluster.this.description
}

output "folder_id" {
  description = "returns a string"
  value       = data.yandex_dataproc_cluster.this.folder_id
}

output "id" {
  description = "returns a string"
  value       = data.yandex_dataproc_cluster.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.yandex_dataproc_cluster.this.labels
}

output "name" {
  description = "returns a string"
  value       = data.yandex_dataproc_cluster.this.name
}

output "service_account_id" {
  description = "returns a string"
  value       = data.yandex_dataproc_cluster.this.service_account_id
}

output "zone_id" {
  description = "returns a string"
  value       = data.yandex_dataproc_cluster.this.zone_id
}

output "this" {
  value = yandex_dataproc_cluster.this
}

