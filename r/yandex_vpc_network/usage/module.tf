module "yandex_vpc_network" {
  source = "./modules/yandex/r/yandex_vpc_network"

  # description - (optional) is a type of string
  description = null
  # folder_id - (optional) is a type of string
  folder_id = null
  # labels - (optional) is a type of map of string
  labels = {}
  # name - (optional) is a type of string
  name = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
