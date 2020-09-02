module "yandex_kms_symmetric_key" {
  source = "./modules/yandex/r/yandex_kms_symmetric_key"

  # default_algorithm - (optional) is a type of string
  default_algorithm = null
  # description - (optional) is a type of string
  description = null
  # folder_id - (optional) is a type of string
  folder_id = null
  # labels - (optional) is a type of map of string
  labels = {}
  # name - (optional) is a type of string
  name = null
  # rotation_period - (optional) is a type of string
  rotation_period = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
