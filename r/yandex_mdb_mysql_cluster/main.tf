terraform {
  required_providers {
    yandex = ">= 0.43.0"
  }
}

resource "yandex_mdb_mysql_cluster" "this" {
  description = var.description
  environment = var.environment
  folder_id   = var.folder_id
  labels      = var.labels
  name        = var.name
  network_id  = var.network_id
  version     = var.version

  dynamic "backup_window_start" {
    for_each = var.backup_window_start
    content {
      hours   = backup_window_start.value["hours"]
      minutes = backup_window_start.value["minutes"]
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
      subnet_id        = host.value["subnet_id"]
      zone             = host.value["zone"]
    }
  }

  dynamic "resources" {
    for_each = var.resources
    content {
      disk_size          = resources.value["disk_size"]
      disk_type_id       = resources.value["disk_type_id"]
      resource_preset_id = resources.value["resource_preset_id"]
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
          roles         = permission.value["roles"]
        }
      }

    }
  }

}

