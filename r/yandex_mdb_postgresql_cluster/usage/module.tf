module "yandex_mdb_postgresql_cluster" {
  source = "./modules/yandex/r/yandex_mdb_postgresql_cluster"

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

  config = [{
    access = [{
      data_lens = null
    }]
    autofailover = null
    backup_window_start = [{
      hours   = null
      minutes = null
    }]
    pooler_config = [{
      pool_discard = null
      pooling_mode = null
    }]
    resources = [{
      disk_size          = null
      disk_type_id       = null
      resource_preset_id = null
    }]
    version = null
  }]

  database = [{
    extension = [{
      name    = null
      version = null
    }]
    lc_collate = null
    lc_type    = null
    name       = null
    owner      = null
  }]

  host = [{
    assign_public_ip = null
    fqdn             = null
    role             = null
    subnet_id        = null
    zone             = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]

  user = [{
    grants   = []
    login    = null
    name     = null
    password = null
    permission = [{
      database_name = null
    }]
  }]
}
