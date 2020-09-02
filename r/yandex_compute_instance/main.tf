terraform {
  required_providers {
    yandex = ">= 0.42.1"
  }
}

resource "yandex_compute_instance" "this" {
  allow_stopping_for_update = var.allow_stopping_for_update
  description               = var.description
  folder_id                 = var.folder_id
  hostname                  = var.hostname
  labels                    = var.labels
  metadata                  = var.metadata
  name                      = var.name
  network_acceleration_type = var.network_acceleration_type
  platform_id               = var.platform_id
  service_account_id        = var.service_account_id
  zone                      = var.zone

  dynamic "boot_disk" {
    for_each = var.boot_disk
    content {
      auto_delete = boot_disk.value["auto_delete"]
      device_name = boot_disk.value["device_name"]
      disk_id     = boot_disk.value["disk_id"]
      mode        = boot_disk.value["mode"]

      dynamic "initialize_params" {
        for_each = boot_disk.value.initialize_params
        content {
          description = initialize_params.value["description"]
          image_id    = initialize_params.value["image_id"]
          name        = initialize_params.value["name"]
          size        = initialize_params.value["size"]
          snapshot_id = initialize_params.value["snapshot_id"]
          type        = initialize_params.value["type"]
        }
      }

    }
  }

  dynamic "network_interface" {
    for_each = var.network_interface
    content {
      ip_address         = network_interface.value["ip_address"]
      ipv4               = network_interface.value["ipv4"]
      ipv6               = network_interface.value["ipv6"]
      ipv6_address       = network_interface.value["ipv6_address"]
      nat                = network_interface.value["nat"]
      nat_ip_address     = network_interface.value["nat_ip_address"]
      security_group_ids = network_interface.value["security_group_ids"]
      subnet_id          = network_interface.value["subnet_id"]
    }
  }

  dynamic "resources" {
    for_each = var.resources
    content {
      core_fraction = resources.value["core_fraction"]
      cores         = resources.value["cores"]
      gpus          = resources.value["gpus"]
      memory        = resources.value["memory"]
    }
  }

  dynamic "scheduling_policy" {
    for_each = var.scheduling_policy
    content {
      preemptible = scheduling_policy.value["preemptible"]
    }
  }

  dynamic "secondary_disk" {
    for_each = var.secondary_disk
    content {
      auto_delete = secondary_disk.value["auto_delete"]
      device_name = secondary_disk.value["device_name"]
      disk_id     = secondary_disk.value["disk_id"]
      mode        = secondary_disk.value["mode"]
    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

