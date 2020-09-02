module "yandex_iam_service_account_iam_binding" {
  source = "./modules/yandex/r/yandex_iam_service_account_iam_binding"

  # members - (required) is a type of set of string
  members = []
  # role - (required) is a type of string
  role = null
  # service_account_id - (required) is a type of string
  service_account_id = null
  # sleep_after - (optional) is a type of number
  sleep_after = null
}
