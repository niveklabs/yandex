output "bucket" {
  description = "returns a string"
  value       = yandex_storage_bucket.this.bucket
}

output "bucket_domain_name" {
  description = "returns a string"
  value       = yandex_storage_bucket.this.bucket_domain_name
}

output "id" {
  description = "returns a string"
  value       = yandex_storage_bucket.this.id
}

output "website_domain" {
  description = "returns a string"
  value       = yandex_storage_bucket.this.website_domain
}

output "website_endpoint" {
  description = "returns a string"
  value       = yandex_storage_bucket.this.website_endpoint
}

output "this" {
  value = yandex_storage_bucket.this
}

