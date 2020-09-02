module "yandex_container_registry" {
  source = "./modules/yandex/d/yandex_container_registry"

  # folder_id - (optional) is a type of string
  folder_id = null
  # labels - (optional) is a type of map of string
  labels = {}
  # name - (optional) is a type of string
  name = null
  # registry_id - (optional) is a type of string
  registry_id = null
}
