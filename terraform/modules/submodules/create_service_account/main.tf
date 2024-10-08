resource "yandex_iam_service_account" "${var.service_account_name}" {
 name        = "${var.service_account_name}"
 description = "${var.service_account_description}"
}
