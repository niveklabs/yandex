module "yandex_iam_service_account" {
  source = "./modules/yandex/r/yandex_iam_service_account"

  # description - (optional) is a type of string
  description = null
  # folder_id - (optional) is a type of string
  folder_id = null
  # name - (optional) is a type of string
  name = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
