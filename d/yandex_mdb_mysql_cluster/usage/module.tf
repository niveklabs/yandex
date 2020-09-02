module "yandex_mdb_mysql_cluster" {
  source = "./modules/yandex/d/yandex_mdb_mysql_cluster"

  # cluster_id - (optional) is a type of string
  cluster_id = null
  # description - (optional) is a type of string
  description = null
  # folder_id - (optional) is a type of string
  folder_id = null
  # labels - (optional) is a type of map of string
  labels = {}
  # name - (optional) is a type of string
  name = null
}
