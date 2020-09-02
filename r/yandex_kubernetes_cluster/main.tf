terraform {
  required_providers {
    yandex = ">= 0.42.1"
  }
}

resource "yandex_kubernetes_cluster" "this" {
  cluster_ipv4_range       = var.cluster_ipv4_range
  description              = var.description
  folder_id                = var.folder_id
  labels                   = var.labels
  name                     = var.name
  network_id               = var.network_id
  network_policy_provider  = var.network_policy_provider
  node_ipv4_cidr_mask_size = var.node_ipv4_cidr_mask_size
  node_service_account_id  = var.node_service_account_id
  release_channel          = var.release_channel
  service_account_id       = var.service_account_id
  service_ipv4_range       = var.service_ipv4_range

  dynamic "kms_provider" {
    for_each = var.kms_provider
    content {
      key_id = kms_provider.value["key_id"]
    }
  }

  dynamic "master" {
    for_each = var.master
    content {
      public_ip = master.value["public_ip"]
      version   = master.value["version"]

      dynamic "maintenance_policy" {
        for_each = master.value.maintenance_policy
        content {
          auto_upgrade = maintenance_policy.value["auto_upgrade"]

          dynamic "maintenance_window" {
            for_each = maintenance_policy.value.maintenance_window
            content {
              day        = maintenance_window.value["day"]
              duration   = maintenance_window.value["duration"]
              start_time = maintenance_window.value["start_time"]
            }
          }

        }
      }

      dynamic "regional" {
        for_each = master.value.regional
        content {
          region = regional.value["region"]

          dynamic "location" {
            for_each = regional.value.location
            content {
              subnet_id = location.value["subnet_id"]
              zone      = location.value["zone"]
            }
          }

        }
      }

      dynamic "zonal" {
        for_each = master.value.zonal
        content {
          subnet_id = zonal.value["subnet_id"]
          zone      = zonal.value["zone"]
        }
      }

    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      read   = timeouts.value["read"]
      update = timeouts.value["update"]
    }
  }

}

