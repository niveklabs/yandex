output "created_at" {
  description = "returns a string"
  value       = data.yandex_vpc_security_group.this.created_at
}

output "description" {
  description = "returns a string"
  value       = data.yandex_vpc_security_group.this.description
}

output "egress" {
  description = "returns a set of object"
  value       = data.yandex_vpc_security_group.this.egress
}

output "folder_id" {
  description = "returns a string"
  value       = data.yandex_vpc_security_group.this.folder_id
}

output "id" {
  description = "returns a string"
  value       = data.yandex_vpc_security_group.this.id
}

output "ingress" {
  description = "returns a set of object"
  value       = data.yandex_vpc_security_group.this.ingress
}

output "labels" {
  description = "returns a map of string"
  value       = data.yandex_vpc_security_group.this.labels
}

output "name" {
  description = "returns a string"
  value       = data.yandex_vpc_security_group.this.name
}

output "network_id" {
  description = "returns a string"
  value       = data.yandex_vpc_security_group.this.network_id
}

output "status" {
  description = "returns a string"
  value       = data.yandex_vpc_security_group.this.status
}

output "this" {
  value = yandex_vpc_security_group.this
}

