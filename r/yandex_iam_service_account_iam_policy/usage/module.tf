module "yandex_iam_service_account_iam_policy" {
  source = "./modules/yandex/r/yandex_iam_service_account_iam_policy"

  # policy_data - (required) is a type of string
  policy_data = null
  # service_account_id - (required) is a type of string
  service_account_id = null
}
