module "yandex_vpc_security_group" {
  source = "./modules/yandex/r/yandex_vpc_security_group"

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

  egress = [{
    description    = null
    from_port      = null
    id             = null
    labels         = {}
    port           = null
    protocol       = null
    to_port        = null
    v4_cidr_blocks = []
    v6_cidr_blocks = []
  }]

  ingress = [{
    description    = null
    from_port      = null
    id             = null
    labels         = {}
    port           = null
    protocol       = null
    to_port        = null
    v4_cidr_blocks = []
    v6_cidr_blocks = []
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
