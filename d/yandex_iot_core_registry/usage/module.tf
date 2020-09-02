module "yandex_iot_core_registry" {
  source = "./modules/yandex/d/yandex_iot_core_registry"

  # folder_id - (optional) is a type of string
  folder_id = null
  # name - (optional) is a type of string
  name = null
  # registry_id - (optional) is a type of string
  registry_id = null
}
