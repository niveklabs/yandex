module "yandex_compute_disk" {
  source = "./modules/yandex/d/yandex_compute_disk"

  # disk_id - (optional) is a type of string
  disk_id = null
  # folder_id - (optional) is a type of string
  folder_id = null
  # name - (optional) is a type of string
  name = null
}
