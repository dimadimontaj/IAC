resource "yandex_resourcemanager_folder_iam_member" "${var.service_account_role}" {
 folder_id = "${var.folder_id}"
 role      = "${var.service_account_role}"
 member    = "serviceAccount:${yandex_iam_service_account.${var.service_account_name}.id}"
}
