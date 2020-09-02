module "yandex_compute_image" {
  source = "./modules/yandex/r/yandex_compute_image"

  # description - (optional) is a type of string
  description = null
  # family - (optional) is a type of string
  family = null
  # folder_id - (optional) is a type of string
  folder_id = null
  # labels - (optional) is a type of map of string
  labels = {}
  # min_disk_size - (optional) is a type of number
  min_disk_size = null
  # name - (optional) is a type of string
  name = null
  # os_type - (optional) is a type of string
  os_type = null
  # product_ids - (optional) is a type of set of string
  product_ids = []
  # source_disk - (optional) is a type of string
  source_disk = null
  # source_family - (optional) is a type of string
  source_family = null
  # source_image - (optional) is a type of string
  source_image = null
  # source_snapshot - (optional) is a type of string
  source_snapshot = null
  # source_url - (optional) is a type of string
  source_url = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
