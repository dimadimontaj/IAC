output service_account_id {
  value       = yandex_iam_service_account.service_account.id
  sensitive   = true
}
