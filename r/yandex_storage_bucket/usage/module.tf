module "yandex_storage_bucket" {
  source = "./modules/yandex/r/yandex_storage_bucket"

  # access_key - (optional) is a type of string
  access_key = null
  # acl - (optional) is a type of string
  acl = null
  # bucket - (optional) is a type of string
  bucket = null
  # bucket_prefix - (optional) is a type of string
  bucket_prefix = null
  # force_destroy - (optional) is a type of bool
  force_destroy = null
  # secret_key - (optional) is a type of string
  secret_key = null
  # website_domain - (optional) is a type of string
  website_domain = null
  # website_endpoint - (optional) is a type of string
  website_endpoint = null

  cors_rule = [{
    allowed_headers = []
    allowed_methods = []
    allowed_origins = []
    expose_headers  = []
    max_age_seconds = null
  }]

  grant = [{
    id          = null
    permissions = []
    type        = null
    uri         = null
  }]

  website = [{
    error_document = null
    index_document = null
  }]
}
