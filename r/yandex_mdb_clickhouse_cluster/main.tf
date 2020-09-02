terraform {
  required_providers {
    yandex = ">= 0.43.0"
  }
}

resource "yandex_mdb_clickhouse_cluster" "this" {
  description = var.description
  environment = var.environment
  folder_id   = var.folder_id
  labels      = var.labels
  name        = var.name
  network_id  = var.network_id
  version     = var.version

  dynamic "access" {
    for_each = var.access
    content {
      data_lens  = access.value["data_lens"]
      metrika    = access.value["metrika"]
      serverless = access.value["serverless"]
      web_sql    = access.value["web_sql"]
    }
  }

  dynamic "backup_window_start" {
    for_each = var.backup_window_start
    content {
      hours   = backup_window_start.value["hours"]
      minutes = backup_window_start.value["minutes"]
    }
  }

  dynamic "clickhouse" {
    for_each = var.clickhouse
    content {

      dynamic "resources" {
        for_each = clickhouse.value.resources
        content {
          disk_size          = resources.value["disk_size"]
          disk_type_id       = resources.value["disk_type_id"]
          resource_preset_id = resources.value["resource_preset_id"]
        }
      }

    }
  }

  dynamic "database" {
    for_each = var.database
    content {
      name = database.value["name"]
    }
  }

  dynamic "host" {
    for_each = var.host
    content {
      assign_public_ip = host.value["assign_public_ip"]
      shard_name       = host.value["shard_name"]
      subnet_id        = host.value["subnet_id"]
      type             = host.value["type"]
      zone             = host.value["zone"]
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

  dynamic "user" {
    for_each = var.user
    content {
      name     = user.value["name"]
      password = user.value["password"]

      dynamic "permission" {
        for_each = user.value.permission
        content {
          database_name = permission.value["database_name"]
        }
      }

    }
  }

  dynamic "zookeeper" {
    for_each = var.zookeeper
    content {

      dynamic "resources" {
        for_each = zookeeper.value.resources
        content {
          disk_size          = resources.value["disk_size"]
          disk_type_id       = resources.value["disk_type_id"]
          resource_preset_id = resources.value["resource_preset_id"]
        }
      }

    }
  }

}

