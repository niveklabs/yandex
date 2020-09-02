module "yandex_mdb_redis_cluster" {
  source = "./modules/yandex/r/yandex_mdb_redis_cluster"

  # description - (optional) is a type of string
  description = null
  # environment - (required) is a type of string
  environment = null
  # folder_id - (optional) is a type of string
  folder_id = null
  # labels - (optional) is a type of map of string
  labels = {}
  # name - (required) is a type of string
  name = null
  # network_id - (required) is a type of string
  network_id = null
  # sharded - (optional) is a type of bool
  sharded = null

  config = [{
    maxmemory_policy = null
    password         = null
    timeout          = null
    version          = null
  }]

  host = [{
    fqdn       = null
    shard_name = null
    subnet_id  = null
    zone       = null
  }]

  resources = [{
    disk_size          = null
    resource_preset_id = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
