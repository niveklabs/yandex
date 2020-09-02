module "yandex_vpc_route_table" {
  source = "./modules/yandex/r/yandex_vpc_route_table"

  # description - (optional) is a type of string
  description = null
  # folder_id - (optional) is a type of string
  folder_id = null
  # labels - (optional) is a type of map of string
  labels = {}
  # name - (optional) is a type of string
  name = null
  # network_id - (required) is a type of string
  network_id = null

  static_route = [{
    destination_prefix = null
    next_hop_address   = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
