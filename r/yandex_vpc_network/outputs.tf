output "created_at" {
  description = "returns a string"
  value       = yandex_vpc_network.this.created_at
}

output "folder_id" {
  description = "returns a string"
  value       = yandex_vpc_network.this.folder_id
}

output "id" {
  description = "returns a string"
  value       = yandex_vpc_network.this.id
}

output "name" {
  description = "returns a string"
  value       = yandex_vpc_network.this.name
}

output "subnet_ids" {
  description = "returns a list of string"
  value       = yandex_vpc_network.this.subnet_ids
}

output "this" {
  value = yandex_vpc_network.this
}

