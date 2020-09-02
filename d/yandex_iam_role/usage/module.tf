module "yandex_iam_role" {
  source = "./modules/yandex/d/yandex_iam_role"

  # description - (optional) is a type of string
  description = null
  # role_id - (optional) is a type of string
  role_id = null
}
