module "yandex_kubernetes_node_group" {
  source = "./modules/yandex/d/yandex_kubernetes_node_group"

  # folder_id - (optional) is a type of string
  folder_id = null
  # name - (optional) is a type of string
  name = null
  # node_group_id - (optional) is a type of string
  node_group_id = null
}
