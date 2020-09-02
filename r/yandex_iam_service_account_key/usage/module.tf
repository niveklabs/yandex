module "yandex_iam_service_account_key" {
  source = "./modules/yandex/r/yandex_iam_service_account_key"

  # description - (optional) is a type of string
  description = null
  # format - (optional) is a type of string
  format = null
  # key_algorithm - (optional) is a type of string
  key_algorithm = null
  # pgp_key - (optional) is a type of string
  pgp_key = null
  # service_account_id - (required) is a type of string
  service_account_id = null
}
