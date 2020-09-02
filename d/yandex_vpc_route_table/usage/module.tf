module "yandex_vpc_route_table" {
  source = "./modules/yandex/d/yandex_vpc_route_table"

  # folder_id - (optional) is a type of string
  folder_id = null
  # name - (optional) is a type of string
  name = null
  # route_table_id - (optional) is a type of string
  route_table_id = null
}
