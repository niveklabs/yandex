module "yandex_vpc_network" {
  source = "./modules/yandex/d/yandex_vpc_network"

  # folder_id - (optional) is a type of string
  folder_id = null
  # name - (optional) is a type of string
  name = null
  # network_id - (optional) is a type of string
  network_id = null
}
