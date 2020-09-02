module "yandex_function_trigger" {
  source = "./modules/yandex/r/yandex_function_trigger"

  # description - (optional) is a type of string
  description = null
  # folder_id - (optional) is a type of string
  folder_id = null
  # labels - (optional) is a type of map of string
  labels = {}
  # name - (required) is a type of string
  name = null

  dlq = [{
    queue_id           = null
    service_account_id = null
  }]

  function = [{
    id                 = null
    retry_attempts     = null
    retry_interval     = null
    service_account_id = null
    tag                = null
  }]

  iot = [{
    device_id   = null
    registry_id = null
    topic       = null
  }]

  message_queue = [{
    batch_cutoff       = null
    batch_size         = null
    queue_id           = null
    service_account_id = null
    visibility_timeout = null
  }]

  object_storage = [{
    bucket_id = null
    create    = null
    delete    = null
    prefix    = null
    suffix    = null
    update    = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]

  timer = [{
    cron_expression = null
  }]
}
