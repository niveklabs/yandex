module "yandex_vpc_security_group" {
  source = "./modules/yandex/d/yandex_vpc_security_group"

  # security_group_id - (required) is a type of string
  security_group_id = null
}
