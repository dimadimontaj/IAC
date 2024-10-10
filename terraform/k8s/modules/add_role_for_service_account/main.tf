resource "yandex_resourcemanager_folder_iam_member" "roles" {
 folder_id = var.folder_id
 role      = var.service_account_role
 member    = "serviceAccount:${var.service_account_id}"
}
