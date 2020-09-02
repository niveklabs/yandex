module "yandex_resourcemanager_cloud_iam_member" {
  source = "./modules/yandex/r/yandex_resourcemanager_cloud_iam_member"

  # cloud_id - (required) is a type of string
  cloud_id = null
  # member - (required) is a type of string
  member = null
  # role - (required) is a type of string
  role = null
  # sleep_after - (optional) is a type of number
  sleep_after = null
}
