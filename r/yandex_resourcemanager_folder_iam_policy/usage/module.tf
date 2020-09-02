module "yandex_resourcemanager_folder_iam_policy" {
  source = "./modules/yandex/r/yandex_resourcemanager_folder_iam_policy"

  # folder_id - (required) is a type of string
  folder_id = null
  # policy_data - (required) is a type of string
  policy_data = null
}
