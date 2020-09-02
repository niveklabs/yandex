output "created_at" {
  description = "returns a string"
  value       = data.yandex_vpc_network.this.created_at
}

output "description" {
  description = "returns a string"
  value       = data.yandex_vpc_network.this.description
}

output "folder_id" {
  description = "returns a string"
  value       = data.yandex_vpc_network.this.folder_id
}

output "id" {
  description = "returns a string"
  value       = data.yandex_vpc_network.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.yandex_vpc_network.this.labels
}

output "name" {
  description = "returns a string"
  value       = data.yandex_vpc_network.this.name
}

output "network_id" {
  description = "returns a string"
  value       = data.yandex_vpc_network.this.network_id
}

output "subnet_ids" {
  description = "returns a list of string"
  value       = data.yandex_vpc_network.this.subnet_ids
}

output "this" {
  value = yandex_vpc_network.this
}

