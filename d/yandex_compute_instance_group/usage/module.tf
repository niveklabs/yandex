module "yandex_compute_instance_group" {
  source = "./modules/yandex/d/yandex_compute_instance_group"

  # instance_group_id - (required) is a type of string
  instance_group_id = null
}
