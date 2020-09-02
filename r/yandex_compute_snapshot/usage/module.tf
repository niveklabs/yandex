module "yandex_compute_snapshot" {
  source = "./modules/yandex/r/yandex_compute_snapshot"

  # description - (optional) is a type of string
  description = null
  # folder_id - (optional) is a type of string
  folder_id = null
  # labels - (optional) is a type of map of string
  labels = {}
  # name - (optional) is a type of string
  name = null
  # source_disk_id - (required) is a type of string
  source_disk_id = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
