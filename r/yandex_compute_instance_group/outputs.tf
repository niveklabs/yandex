output "created_at" {
  description = "returns a string"
  value       = yandex_compute_instance_group.this.created_at
}

output "folder_id" {
  description = "returns a string"
  value       = yandex_compute_instance_group.this.folder_id
}

output "id" {
  description = "returns a string"
  value       = yandex_compute_instance_group.this.id
}

output "instances" {
  description = "returns a list of object"
  value       = yandex_compute_instance_group.this.instances
}

output "status" {
  description = "returns a string"
  value       = yandex_compute_instance_group.this.status
}

output "this" {
  value = yandex_compute_instance_group.this
}

