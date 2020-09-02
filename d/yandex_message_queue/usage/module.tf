module "yandex_message_queue" {
  source = "./modules/yandex/d/yandex_message_queue"

  # access_key - (optional) is a type of string
  access_key = null
  # name - (required) is a type of string
  name = null
  # secret_key - (optional) is a type of string
  secret_key = null
}
