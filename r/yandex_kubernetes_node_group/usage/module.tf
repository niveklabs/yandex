module "yandex_kubernetes_node_group" {
  source = "./modules/yandex/r/yandex_kubernetes_node_group"

  # allowed_unsafe_sysctls - (optional) is a type of list of string
  allowed_unsafe_sysctls = []
  # cluster_id - (required) is a type of string
  cluster_id = null
  # description - (optional) is a type of string
  description = null
  # labels - (optional) is a type of map of string
  labels = {}
  # name - (optional) is a type of string
  name = null
  # node_labels - (optional) is a type of map of string
  node_labels = {}
  # node_taints - (optional) is a type of list of string
  node_taints = []
  # version - (optional) is a type of string
  version = null

  allocation_policy = [{
    location = [{
      subnet_id = null
      zone      = null
    }]
  }]

  deploy_policy = [{
    max_expansion   = null
    max_unavailable = null
  }]

  instance_template = [{
    boot_disk = [{
      size = null
      type = null
    }]
    metadata    = {}
    nat         = null
    platform_id = null
    resources = [{
      core_fraction = null
      cores         = null
      gpus          = null
      memory        = null
    }]
    scheduling_policy = [{
      preemptible = null
    }]
  }]

  maintenance_policy = [{
    auto_repair  = null
    auto_upgrade = null
    maintenance_window = [{
      day        = null
      duration   = null
      start_time = null
    }]
  }]

  scale_policy = [{
    auto_scale = [{
      initial = null
      max     = null
      min     = null
    }]
    fixed_scale = [{
      size = null
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
