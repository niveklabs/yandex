module "yandex_lb_network_load_balancer" {
  source = "./modules/yandex/d/yandex_lb_network_load_balancer"

  # folder_id - (optional) is a type of string
  folder_id = null
  # name - (optional) is a type of string
  name = null
  # network_load_balancer_id - (optional) is a type of string
  network_load_balancer_id = null
}
