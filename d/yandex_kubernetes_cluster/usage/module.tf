module "yandex_kubernetes_cluster" {
  source = "./modules/yandex/d/yandex_kubernetes_cluster"

  # cluster_id - (optional) is a type of string
  cluster_id = null
  # folder_id - (optional) is a type of string
  folder_id = null
  # name - (optional) is a type of string
  name = null
}
