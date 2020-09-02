module "yandex_dataproc_cluster" {
  source = "./modules/yandex/r/yandex_dataproc_cluster"

  # bucket - (optional) is a type of string
  bucket = null
  # description - (optional) is a type of string
  description = null
  # folder_id - (optional) is a type of string
  folder_id = null
  # labels - (optional) is a type of map of string
  labels = {}
  # name - (required) is a type of string
  name = null
  # service_account_id - (required) is a type of string
  service_account_id = null
  # zone_id - (optional) is a type of string
  zone_id = null

  cluster_config = [{
    hadoop = [{
      properties      = {}
      services        = []
      ssh_public_keys = []
    }]
    subcluster_spec = [{
      hosts_count = null
      id          = null
      name        = null
      resources = [{
        disk_size          = null
        disk_type_id       = null
        resource_preset_id = null
      }]
      role      = null
      subnet_id = null
    }]
    version_id = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
