module "yandex_mdb_postgresql_cluster" {
  source = "./modules/yandex/d/yandex_mdb_postgresql_cluster"

  # cluster_id - (optional) is a type of string
  cluster_id = null
  # description - (optional) is a type of string
  description = null
  # folder_id - (optional) is a type of string
  folder_id = null
  # name - (optional) is a type of string
  name = null
}
