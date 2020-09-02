terraform {
  required_providers {
    yandex = ">= 0.42.1"
  }
}

resource "yandex_mdb_redis_cluster" "this" {
  description = var.description
  environment = var.environment
  folder_id   = var.folder_id
  labels      = var.labels
  name        = var.name
  network_id  = var.network_id
  sharded     = var.sharded

  dynamic "config" {
    for_each = var.config
    content {
      maxmemory_policy = config.value["maxmemory_policy"]
      password         = config.value["password"]
      timeout          = config.value["timeout"]
      version          = config.value["version"]
    }
  }

  dynamic "host" {
    for_each = var.host
    content {
      shard_name = host.value["shard_name"]
      subnet_id  = host.value["subnet_id"]
      zone       = host.value["zone"]
    }
  }

  dynamic "resources" {
    for_each = var.resources
    content {
      disk_size          = resources.value["disk_size"]
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

}

