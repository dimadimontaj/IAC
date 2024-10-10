resource "yandex_iam_service_account" "service_account" {
 name        = var.service_account_name
 description = var.service_account_description
}
