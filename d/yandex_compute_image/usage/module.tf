module "yandex_compute_image" {
  source = "./modules/yandex/d/yandex_compute_image"

  # family - (optional) is a type of string
  family = null
  # folder_id - (optional) is a type of string
  folder_id = null
  # image_id - (optional) is a type of string
  image_id = null
  # name - (optional) is a type of string
  name = null
}
