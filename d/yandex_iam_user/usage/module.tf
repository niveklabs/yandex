module "yandex_iam_user" {
  source = "./modules/yandex/d/yandex_iam_user"

  # login - (optional) is a type of string
  login = null
  # user_id - (optional) is a type of string
  user_id = null
}
