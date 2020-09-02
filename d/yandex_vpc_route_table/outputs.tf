output "created_at" {
  description = "returns a string"
  value       = data.yandex_vpc_route_table.this.created_at
}

output "description" {
  description = "returns a string"
  value       = data.yandex_vpc_route_table.this.description
}

output "folder_id" {
  description = "returns a string"
  value       = data.yandex_vpc_route_table.this.folder_id
}

output "id" {
  description = "returns a string"
  value       = data.yandex_vpc_route_table.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.yandex_vpc_route_table.this.labels
}

output "name" {
  description = "returns a string"
  value       = data.yandex_vpc_route_table.this.name
}

output "network_id" {
  description = "returns a string"
  value       = data.yandex_vpc_route_table.this.network_id
}

output "route_table_id" {
  description = "returns a string"
  value       = data.yandex_vpc_route_table.this.route_table_id
}

output "static_route" {
  description = "returns a set of object"
  value       = data.yandex_vpc_route_table.this.static_route
}

output "this" {
  value = yandex_vpc_route_table.this
}

