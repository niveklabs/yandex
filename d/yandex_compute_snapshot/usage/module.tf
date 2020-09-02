module "yandex_compute_snapshot" {
  source = "./modules/yandex/d/yandex_compute_snapshot"

  # folder_id - (optional) is a type of string
  folder_id = null
  # name - (optional) is a type of string
  name = null
  # snapshot_id - (optional) is a type of string
  snapshot_id = null
}
