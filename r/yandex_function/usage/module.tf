module "yandex_function" {
  source = "./modules/yandex/r/yandex_function"

  # description - (optional) is a type of string
  description = null
  # entrypoint - (required) is a type of string
  entrypoint = null
  # environment - (optional) is a type of map of string
  environment = {}
  # execution_timeout - (optional) is a type of string
  execution_timeout = null
  # folder_id - (optional) is a type of string
  folder_id = null
  # labels - (optional) is a type of map of string
  labels = {}
  # memory - (required) is a type of number
  memory = null
  # name - (required) is a type of string
  name = null
  # runtime - (required) is a type of string
  runtime = null
  # service_account_id - (optional) is a type of string
  service_account_id = null
  # tags - (optional) is a type of set of string
  tags = []
  # user_hash - (required) is a type of string
  user_hash = null

  content = [{
    zip_filename = null
  }]

  package = [{
    bucket_name = null
    object_name = null
    sha_256     = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
