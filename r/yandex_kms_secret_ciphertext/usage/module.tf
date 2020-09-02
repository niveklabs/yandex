module "yandex_kms_secret_ciphertext" {
  source = "./modules/yandex/r/yandex_kms_secret_ciphertext"

  # aad_context - (optional) is a type of string
  aad_context = null
  # key_id - (required) is a type of string
  key_id = null
  # plaintext - (required) is a type of string
  plaintext = null

  timeouts = [{
    create = null
    delete = null
    read   = null
  }]
}
