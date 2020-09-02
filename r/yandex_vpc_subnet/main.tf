terraform {
  required_providers {
    yandex = ">= 0.42.1"
  }
}

resource "yandex_vpc_subnet" "this" {
  description    = var.description
  folder_id      = var.folder_id
  labels         = var.labels
  name           = var.name
  network_id     = var.network_id
  route_table_id = var.route_table_id
  v4_cidr_blocks = var.v4_cidr_blocks
  zone           = var.zone

  dynamic "dhcp_options" {
    for_each = var.dhcp_options
    content {
      domain_name         = dhcp_options.value["domain_name"]
      domain_name_servers = dhcp_options.value["domain_name_servers"]
      ntp_servers         = dhcp_options.value["ntp_servers"]
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

