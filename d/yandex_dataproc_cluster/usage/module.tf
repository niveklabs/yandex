module "yandex_dataproc_cluster" {
  source = "./modules/yandex/d/yandex_dataproc_cluster"

  # cluster_id - (optional) is a type of string
  cluster_id = null
  # name - (optional) is a type of string
  name = null
}
