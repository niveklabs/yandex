module "yandex_mdb_clickhouse_cluster" {
  source = "./modules/yandex/r/yandex_mdb_clickhouse_cluster"

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
  # version - (optional) is a type of string
  version = null

  access = [{
    data_lens  = null
    metrika    = null
    serverless = null
    web_sql    = null
  }]

  backup_window_start = [{
    hours   = null
    minutes = null
  }]

  clickhouse = [{
    resources = [{
      disk_size          = null
      disk_type_id       = null
      resource_preset_id = null
    }]
  }]

  database = [{
    name = null
  }]

  host = [{
    assign_public_ip = null
    fqdn             = null
    shard_name       = null
    subnet_id        = null
    type             = null
    zone             = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]

  user = [{
    name     = null
    password = null
    permission = [{
      database_name = null
    }]
  }]

  zookeeper = [{
    resources = [{
      disk_size          = null
      disk_type_id       = null
      resource_preset_id = null
    }]
  }]
}
