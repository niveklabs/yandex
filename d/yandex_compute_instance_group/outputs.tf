output "allocation_policy" {
  description = "returns a list of object"
  value       = data.yandex_compute_instance_group.this.allocation_policy
}

output "created_at" {
  description = "returns a string"
  value       = data.yandex_compute_instance_group.this.created_at
}

output "deletion_protection" {
  description = "returns a bool"
  value       = data.yandex_compute_instance_group.this.deletion_protection
}

output "deploy_policy" {
  description = "returns a list of object"
  value       = data.yandex_compute_instance_group.this.deploy_policy
}

output "description" {
  description = "returns a string"
  value       = data.yandex_compute_instance_group.this.description
}

output "folder_id" {
  description = "returns a string"
  value       = data.yandex_compute_instance_group.this.folder_id
}

output "health_check" {
  description = "returns a list of object"
  value       = data.yandex_compute_instance_group.this.health_check
}

output "id" {
  description = "returns a string"
  value       = data.yandex_compute_instance_group.this.id
}

output "instance_template" {
  description = "returns a list of object"
  value       = data.yandex_compute_instance_group.this.instance_template
}

output "instances" {
  description = "returns a list of object"
  value       = data.yandex_compute_instance_group.this.instances
}

output "labels" {
  description = "returns a map of string"
  value       = data.yandex_compute_instance_group.this.labels
}

output "load_balancer" {
  description = "returns a list of object"
  value       = data.yandex_compute_instance_group.this.load_balancer
}

output "load_balancer_state" {
  description = "returns a list of object"
  value       = data.yandex_compute_instance_group.this.load_balancer_state
}

output "name" {
  description = "returns a string"
  value       = data.yandex_compute_instance_group.this.name
}

output "scale_policy" {
  description = "returns a list of object"
  value       = data.yandex_compute_instance_group.this.scale_policy
}

output "service_account_id" {
  description = "returns a string"
  value       = data.yandex_compute_instance_group.this.service_account_id
}

output "status" {
  description = "returns a string"
  value       = data.yandex_compute_instance_group.this.status
}

output "variables" {
  description = "returns a map of string"
  value       = data.yandex_compute_instance_group.this.variables
}

output "this" {
  value = yandex_compute_instance_group.this
}

