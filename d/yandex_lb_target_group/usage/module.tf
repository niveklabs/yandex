module "yandex_lb_target_group" {
  source = "./modules/yandex/d/yandex_lb_target_group"

  # folder_id - (optional) is a type of string
  folder_id = null
  # name - (optional) is a type of string
  name = null
  # target_group_id - (optional) is a type of string
  target_group_id = null
}
