resource "yandex_kubernetes_cluster" "${var.cluster_name}" {
 network_id = yandex_vpc_network.${var.network_name}.id
 master {
   master_location {
     zone      = yandex_vpc_subnet.${var.subnet_name}.zone
     subnet_id = yandex_vpc_subnet.${var.subnet_name}.id
   }
 }
 service_account_id      = yandex_iam_service_account.${var.service_account_name}.id
 node_service_account_id = yandex_iam_service_account.${var.service_account_name}.id
}