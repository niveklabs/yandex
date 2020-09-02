module "yandex_lb_target_group" {
  source = "./modules/yandex/r/yandex_lb_target_group"

  # description - (optional) is a type of string
  description = null
  # folder_id - (optional) is a type of string
  folder_id = null
  # labels - (optional) is a type of map of string
  labels = {}
  # name - (optional) is a type of string
  name = null
  # region_id - (optional) is a type of string
  region_id = null

  target = [{
    address   = null
    subnet_id = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
