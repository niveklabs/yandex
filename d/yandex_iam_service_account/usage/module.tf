module "yandex_iam_service_account" {
  source = "./modules/yandex/d/yandex_iam_service_account"

  # folder_id - (optional) is a type of string
  folder_id = null
  # name - (optional) is a type of string
  name = null
  # service_account_id - (optional) is a type of string
  service_account_id = null
}
