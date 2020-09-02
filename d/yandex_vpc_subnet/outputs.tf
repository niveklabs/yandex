output "created_at" {
  description = "returns a string"
  value       = data.yandex_vpc_subnet.this.created_at
}

output "description" {
  description = "returns a string"
  value       = data.yandex_vpc_subnet.this.description
}

output "dhcp_options" {
  description = "returns a list of object"
  value       = data.yandex_vpc_subnet.this.dhcp_options
}

output "folder_id" {
  description = "returns a string"
  value       = data.yandex_vpc_subnet.this.folder_id
}

output "id" {
  description = "returns a string"
  value       = data.yandex_vpc_subnet.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.yandex_vpc_subnet.this.labels
}

output "name" {
  description = "returns a string"
  value       = data.yandex_vpc_subnet.this.name
}

output "network_id" {
  description = "returns a string"
  value       = data.yandex_vpc_subnet.this.network_id
}

output "route_table_id" {
  description = "returns a string"
  value       = data.yandex_vpc_subnet.this.route_table_id
}

output "subnet_id" {
  description = "returns a string"
  value       = data.yandex_vpc_subnet.this.subnet_id
}

output "v4_cidr_blocks" {
  description = "returns a list of string"
  value       = data.yandex_vpc_subnet.this.v4_cidr_blocks
}

output "v6_cidr_blocks" {
  description = "returns a list of string"
  value       = data.yandex_vpc_subnet.this.v6_cidr_blocks
}

output "zone" {
  description = "returns a string"
  value       = data.yandex_vpc_subnet.this.zone
}

output "this" {
  value = yandex_vpc_subnet.this
}

