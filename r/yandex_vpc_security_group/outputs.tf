output "created_at" {
  description = "returns a string"
  value       = yandex_vpc_security_group.this.created_at
}

output "folder_id" {
  description = "returns a string"
  value       = yandex_vpc_security_group.this.folder_id
}

output "id" {
  description = "returns a string"
  value       = yandex_vpc_security_group.this.id
}

output "status" {
  description = "returns a string"
  value       = yandex_vpc_security_group.this.status
}

output "this" {
  value = yandex_vpc_security_group.this
}

