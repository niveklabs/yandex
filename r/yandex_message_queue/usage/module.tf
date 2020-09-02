module "yandex_message_queue" {
  source = "./modules/yandex/r/yandex_message_queue"

  # access_key - (optional) is a type of string
  access_key = null
  # content_based_deduplication - (optional) is a type of bool
  content_based_deduplication = null
  # delay_seconds - (optional) is a type of number
  delay_seconds = null
  # fifo_queue - (optional) is a type of bool
  fifo_queue = null
  # max_message_size - (optional) is a type of number
  max_message_size = null
  # message_retention_seconds - (optional) is a type of number
  message_retention_seconds = null
  # name - (optional) is a type of string
  name = null
  # name_prefix - (optional) is a type of string
  name_prefix = null
  # receive_wait_time_seconds - (optional) is a type of number
  receive_wait_time_seconds = null
  # redrive_policy - (optional) is a type of string
  redrive_policy = null
  # secret_key - (optional) is a type of string
  secret_key = null
  # visibility_timeout_seconds - (optional) is a type of number
  visibility_timeout_seconds = null
}
