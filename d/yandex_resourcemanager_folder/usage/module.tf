module "yandex_resourcemanager_folder" {
  source = "./modules/yandex/d/yandex_resourcemanager_folder"

  # cloud_id - (optional) is a type of string
  cloud_id = null
  # folder_id - (optional) is a type of string
  folder_id = null
  # labels - (optional) is a type of map of string
  labels = {}
  # name - (optional) is a type of string
  name = null
}
