module "yandex_kubernetes_cluster" {
  source = "./modules/yandex/r/yandex_kubernetes_cluster"

  # cluster_ipv4_range - (optional) is a type of string
  cluster_ipv4_range = null
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
  # network_policy_provider - (optional) is a type of string
  network_policy_provider = null
  # node_ipv4_cidr_mask_size - (optional) is a type of number
  node_ipv4_cidr_mask_size = null
  # node_service_account_id - (required) is a type of string
  node_service_account_id = null
  # release_channel - (optional) is a type of string
  release_channel = null
  # service_account_id - (required) is a type of string
  service_account_id = null
  # service_ipv4_range - (optional) is a type of string
  service_ipv4_range = null

  kms_provider = [{
    key_id = null
  }]

  master = [{
    cluster_ca_certificate = null
    external_v4_address    = null
    external_v4_endpoint   = null
    internal_v4_address    = null
    internal_v4_endpoint   = null
    maintenance_policy = [{
      auto_upgrade = null
      maintenance_window = [{
        day        = null
        duration   = null
        start_time = null
      }]
    }]
    public_ip = null
    regional = [{
      location = [{
        subnet_id = null
        zone      = null
      }]
      region = null
    }]
    version = null
    version_info = [{
      current_version        = null
      new_revision_available = null
      new_revision_summary   = null
      version_deprecated     = null
    }]
    zonal = [{
      subnet_id = null
      zone      = null
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
