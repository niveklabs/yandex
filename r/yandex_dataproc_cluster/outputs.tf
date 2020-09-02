output "created_at" {
  description = "returns a string"
  value       = yandex_dataproc_cluster.this.created_at
}

output "folder_id" {
  description = "returns a string"
  value       = yandex_dataproc_cluster.this.folder_id
}

output "id" {
  description = "returns a string"
  value       = yandex_dataproc_cluster.this.id
}

output "zone_id" {
  description = "returns a string"
  value       = yandex_dataproc_cluster.this.zone_id
}

output "this" {
  value = yandex_dataproc_cluster.this
}

