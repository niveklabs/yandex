module "yandex_iam_policy" {
  source = "./modules/yandex/d/yandex_iam_policy"


  binding = [{
    members = []
    role    = null
  }]
}
