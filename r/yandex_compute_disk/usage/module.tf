module "yandex_compute_disk" {
  source = "./modules/yandex/r/yandex_compute_disk"

  # description - (optional) is a type of string
  description = null
  # folder_id - (optional) is a type of string
  folder_id = null
  # image_id - (optional) is a type of string
  image_id = null
  # labels - (optional) is a type of map of string
  labels = {}
  # name - (optional) is a type of string
  name = null
  # size - (optional) is a type of number
  size = null
  # snapshot_id - (optional) is a type of string
  snapshot_id = null
  # type - (optional) is a type of string
  type = null
  # zone - (optional) is a type of string
  zone = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
