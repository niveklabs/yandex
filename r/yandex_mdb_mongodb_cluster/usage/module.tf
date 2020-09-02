module "yandex_mdb_mongodb_cluster" {
  source = "./modules/yandex/r/yandex_mdb_mongodb_cluster"

  # cluster_id - (optional) is a type of string
  cluster_id = null
  # description - (optional) is a type of string
  description = null
  # environment - (required) is a type of string
  environment = null
  # labels - (optional) is a type of map of string
  labels = {}
  # name - (required) is a type of string
  name = null
  # network_id - (required) is a type of string
  network_id = null

  cluster_config = [{
    access = [{
      data_lens = null
    }]
    backup_window_start = [{
      hours   = null
      minutes = null
    }]
    feature_compatibility_version = null
    version                       = null
  }]

  database = [{
    name = null
  }]

  host = [{
    assign_public_ip = null
    health           = null
    name             = null
    role             = null
    shard_name       = null
    subnet_id        = null
    type             = null
    zone_id          = null
  }]

  resources = [{
    disk_size          = null
    disk_type_id       = null
    resource_preset_id = null
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
      roles         = []
    }]
  }]
}
