terraform {
  required_providers {
    yandex = ">= 0.43.0"
  }
}

resource "yandex_dataproc_cluster" "this" {
  bucket             = var.bucket
  description        = var.description
  folder_id          = var.folder_id
  labels             = var.labels
  name               = var.name
  service_account_id = var.service_account_id
  zone_id            = var.zone_id

  dynamic "cluster_config" {
    for_each = var.cluster_config
    content {
      version_id = cluster_config.value["version_id"]

      dynamic "hadoop" {
        for_each = cluster_config.value.hadoop
        content {
          properties      = hadoop.value["properties"]
          services        = hadoop.value["services"]
          ssh_public_keys = hadoop.value["ssh_public_keys"]
        }
      }

      dynamic "subcluster_spec" {
        for_each = cluster_config.value.subcluster_spec
        content {
          hosts_count = subcluster_spec.value["hosts_count"]
          name        = subcluster_spec.value["name"]
          role        = subcluster_spec.value["role"]
          subnet_id   = subcluster_spec.value["subnet_id"]

          dynamic "resources" {
            for_each = subcluster_spec.value.resources
            content {
              disk_size          = resources.value["disk_size"]
              disk_type_id       = resources.value["disk_type_id"]
              resource_preset_id = resources.value["resource_preset_id"]
            }
          }

        }
      }

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

