terraform {
  required_providers {
    yandex = ">= 0.42.1"
  }
}

resource "yandex_mdb_postgresql_cluster" "this" {
  description = var.description
  environment = var.environment
  folder_id   = var.folder_id
  labels      = var.labels
  name        = var.name
  network_id  = var.network_id

  dynamic "config" {
    for_each = var.config
    content {
      autofailover = config.value["autofailover"]
      version      = config.value["version"]

      dynamic "access" {
        for_each = config.value.access
        content {
          data_lens = access.value["data_lens"]
        }
      }

      dynamic "backup_window_start" {
        for_each = config.value.backup_window_start
        content {
          hours   = backup_window_start.value["hours"]
          minutes = backup_window_start.value["minutes"]
        }
      }

      dynamic "pooler_config" {
        for_each = config.value.pooler_config
        content {
          pool_discard = pooler_config.value["pool_discard"]
          pooling_mode = pooler_config.value["pooling_mode"]
        }
      }

      dynamic "resources" {
        for_each = config.value.resources
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
      lc_collate = database.value["lc_collate"]
      lc_type    = database.value["lc_type"]
      name       = database.value["name"]
      owner      = database.value["owner"]

      dynamic "extension" {
        for_each = database.value.extension
        content {
          name    = extension.value["name"]
          version = extension.value["version"]
        }
      }

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
      grants   = user.value["grants"]
      login    = user.value["login"]
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

}

