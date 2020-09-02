module "yandex_function_iam_binding" {
  source = "./modules/yandex/r/yandex_function_iam_binding"

  # function_id - (required) is a type of string
  function_id = null
  # members - (required) is a type of set of string
  members = []
  # role - (required) is a type of string
  role = null
  # sleep_after - (optional) is a type of number
  sleep_after = null
}
