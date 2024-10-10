resource "yandex_kubernetes_cluster" "cluster" {
 network_id = var.network_id
 master {
   master_location {
     zone      = var.subnet_zone
     subnet_id = var.subnet_id
   }
 }
 service_account_id      = var.service_account_id
 node_service_account_id = var.service_account_id
}