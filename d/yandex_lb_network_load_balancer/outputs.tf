output "attached_target_group" {
  description = "returns a set of object"
  value       = data.yandex_lb_network_load_balancer.this.attached_target_group
}

output "created_at" {
  description = "returns a string"
  value       = data.yandex_lb_network_load_balancer.this.created_at
}

output "description" {
  description = "returns a string"
  value       = data.yandex_lb_network_load_balancer.this.description
}

output "folder_id" {
  description = "returns a string"
  value       = data.yandex_lb_network_load_balancer.this.folder_id
}

output "id" {
  description = "returns a string"
  value       = data.yandex_lb_network_load_balancer.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.yandex_lb_network_load_balancer.this.labels
}

output "listener" {
  description = "returns a set of object"
  value       = data.yandex_lb_network_load_balancer.this.listener
}

output "name" {
  description = "returns a string"
  value       = data.yandex_lb_network_load_balancer.this.name
}

output "network_load_balancer_id" {
  description = "returns a string"
  value       = data.yandex_lb_network_load_balancer.this.network_load_balancer_id
}

output "region_id" {
  description = "returns a string"
  value       = data.yandex_lb_network_load_balancer.this.region_id
}

output "type" {
  description = "returns a string"
  value       = data.yandex_lb_network_load_balancer.this.type
}

output "this" {
  value = yandex_lb_network_load_balancer.this
}

