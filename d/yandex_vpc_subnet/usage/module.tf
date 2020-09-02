module "yandex_vpc_subnet" {
  source = "./modules/yandex/d/yandex_vpc_subnet"

  # folder_id - (optional) is a type of string
  folder_id = null
  # name - (optional) is a type of string
  name = null
  # subnet_id - (optional) is a type of string
  subnet_id = null
}
