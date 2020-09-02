module "yandex_compute_instance" {
  source = "./modules/yandex/r/yandex_compute_instance"

  # allow_stopping_for_update - (optional) is a type of bool
  allow_stopping_for_update = null
  # description - (optional) is a type of string
  description = null
  # folder_id - (optional) is a type of string
  folder_id = null
  # hostname - (optional) is a type of string
  hostname = null
  # labels - (optional) is a type of map of string
  labels = {}
  # metadata - (optional) is a type of map of string
  metadata = {}
  # name - (optional) is a type of string
  name = null
  # network_acceleration_type - (optional) is a type of string
  network_acceleration_type = null
  # platform_id - (optional) is a type of string
  platform_id = null
  # service_account_id - (optional) is a type of string
  service_account_id = null
  # zone - (optional) is a type of string
  zone = null

  boot_disk = [{
    auto_delete = null
    device_name = null
    disk_id     = null
    initialize_params = [{
      description = null
      image_id    = null
      name        = null
      size        = null
      snapshot_id = null
      type        = null
    }]
    mode = null
  }]

  network_interface = [{
    index              = null
    ip_address         = null
    ipv4               = null
    ipv6               = null
    ipv6_address       = null
    mac_address        = null
    nat                = null
    nat_ip_address     = null
    nat_ip_version     = null
    security_group_ids = []
    subnet_id          = null
  }]

  resources = [{
    core_fraction = null
    cores         = null
    gpus          = null
    memory        = null
  }]

  scheduling_policy = [{
    preemptible = null
  }]

  secondary_disk = [{
    auto_delete = null
    device_name = null
    disk_id     = null
    mode        = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
