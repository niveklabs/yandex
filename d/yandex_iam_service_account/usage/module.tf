module "yandex_iam_service_account" {
  source = "./modules/yandex/d/yandex_iam_service_account"

  # service_account_id - (required) is a type of string
  service_account_id = null
}
