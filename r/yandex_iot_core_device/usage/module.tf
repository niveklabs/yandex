module "yandex_iot_core_device" {
  source = "./modules/yandex/r/yandex_iot_core_device"

  # aliases - (optional) is a type of map of string
  aliases = {}
  # certificates - (optional) is a type of set of string
  certificates = []
  # description - (optional) is a type of string
  description = null
  # name - (required) is a type of string
  name = null
  # passwords - (optional) is a type of set of string
  passwords = []
  # registry_id - (required) is a type of string
  registry_id = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
