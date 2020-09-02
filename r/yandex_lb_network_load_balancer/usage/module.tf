module "yandex_lb_network_load_balancer" {
  source = "./modules/yandex/r/yandex_lb_network_load_balancer"

  # description - (optional) is a type of string
  description = null
  # folder_id - (optional) is a type of string
  folder_id = null
  # labels - (optional) is a type of map of string
  labels = {}
  # name - (optional) is a type of string
  name = null
  # region_id - (optional) is a type of string
  region_id = null
  # type - (optional) is a type of string
  type = null

  attached_target_group = [{
    healthcheck = [{
      healthy_threshold = null
      http_options = [{
        path = null
        port = null
      }]
      interval = null
      name     = null
      tcp_options = [{
        port = null
      }]
      timeout             = null
      unhealthy_threshold = null
    }]
    target_group_id = null
  }]

  listener = [{
    external_address_spec = [{
      address    = null
      ip_version = null
    }]
    internal_address_spec = [{
      address    = null
      ip_version = null
      subnet_id  = null
    }]
    name        = null
    port        = null
    protocol    = null
    target_port = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
