module "yandex_iot_core_registry" {
  source = "./modules/yandex/r/yandex_iot_core_registry"

  # certificates - (optional) is a type of set of string
  certificates = []
  # description - (optional) is a type of string
  description = null
  # folder_id - (optional) is a type of string
  folder_id = null
  # labels - (optional) is a type of map of string
  labels = {}
  # name - (required) is a type of string
  name = null
  # passwords - (optional) is a type of set of string
  passwords = []

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
