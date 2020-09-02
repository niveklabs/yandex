module "yandex_compute_instance" {
  source = "./modules/yandex/d/yandex_compute_instance"

  # folder_id - (optional) is a type of string
  folder_id = null
  # instance_id - (optional) is a type of string
  instance_id = null
  # name - (optional) is a type of string
  name = null

  scheduling_policy = [{
    preemptible = null
  }]
}
