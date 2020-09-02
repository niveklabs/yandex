terraform {
  required_providers {
    yandex = ">= 0.42.0"
  }
}

data "yandex_compute_instance" "this" {
  folder_id   = var.folder_id
  instance_id = var.instance_id
  name        = var.name

  dynamic "scheduling_policy" {
    for_each = var.scheduling_policy
    content {
      preemptible = scheduling_policy.value["preemptible"]
    }
  }

}

