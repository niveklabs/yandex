module "yandex_resourcemanager_folder_iam_binding" {
  source = "./modules/yandex/r/yandex_resourcemanager_folder_iam_binding"

  # folder_id - (required) is a type of string
  folder_id = null
  # members - (required) is a type of set of string
  members = []
  # role - (required) is a type of string
  role = null
  # sleep_after - (optional) is a type of number
  sleep_after = null
}
