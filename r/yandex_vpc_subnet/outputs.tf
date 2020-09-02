output "created_at" {
  description = "returns a string"
  value       = yandex_vpc_subnet.this.created_at
}

output "folder_id" {
  description = "returns a string"
  value       = yandex_vpc_subnet.this.folder_id
}

output "id" {
  description = "returns a string"
  value       = yandex_vpc_subnet.this.id
}

output "name" {
  description = "returns a string"
  value       = yandex_vpc_subnet.this.name
}

output "v6_cidr_blocks" {
  description = "returns a list of string"
  value       = yandex_vpc_subnet.this.v6_cidr_blocks
}

output "zone" {
  description = "returns a string"
  value       = yandex_vpc_subnet.this.zone
}

output "this" {
  value = yandex_vpc_subnet.this
}

