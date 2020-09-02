module "yandex_vpc_subnet" {
  source = "./modules/yandex/r/yandex_vpc_subnet"

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
  # route_table_id - (optional) is a type of string
  route_table_id = null
  # v4_cidr_blocks - (required) is a type of list of string
  v4_cidr_blocks = []
  # zone - (optional) is a type of string
  zone = null

  dhcp_options = [{
    domain_name         = null
    domain_name_servers = []
    ntp_servers         = []
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
