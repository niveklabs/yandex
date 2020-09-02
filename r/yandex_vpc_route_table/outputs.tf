output "created_at" {
  description = "returns a string"
  value       = yandex_vpc_route_table.this.created_at
}

output "folder_id" {
  description = "returns a string"
  value       = yandex_vpc_route_table.this.folder_id
}

output "id" {
  description = "returns a string"
  value       = yandex_vpc_route_table.this.id
}

output "this" {
  value = yandex_vpc_route_table.this
}

