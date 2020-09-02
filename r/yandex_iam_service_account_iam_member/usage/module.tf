module "yandex_iam_service_account_iam_member" {
  source = "./modules/yandex/r/yandex_iam_service_account_iam_member"

  # member - (required) is a type of string
  member = null
  # role - (required) is a type of string
  role = null
  # service_account_id - (required) is a type of string
  service_account_id = null
  # sleep_after - (optional) is a type of number
  sleep_after = null
}
