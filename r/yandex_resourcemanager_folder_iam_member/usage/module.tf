module "yandex_resourcemanager_folder_iam_member" {
  source = "./modules/yandex/r/yandex_resourcemanager_folder_iam_member"

  # folder_id - (required) is a type of string
  folder_id = null
  # member - (required) is a type of string
  member = null
  # role - (required) is a type of string
  role = null
  # sleep_after - (optional) is a type of number
  sleep_after = null
}
