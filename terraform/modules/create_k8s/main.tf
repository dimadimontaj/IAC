module "create_network" {
  source = "../submodules/create_vpc_network"
  
  network_name = "${var.network_name}"
}

module "create_subnet" {
  source = "../submodules/create_subnet"
  
  subnet_name = "${var.subnet_name}"
  subnet_devposition = "${var.subnet_devposition}"
  subnet_zone = "${var.subnet_zone}"
  network_name = "${var.network_name}"
}

module "create_service_account" {
  source = "../submodules/create_service_account"
  
  service_account_name = "${var.service_account_name}"
  service_account_description = "${var.service_account_description}"
}

module "add_role_for_service_account" {
  source = "../submodules/add_role_for_service_account"
  
  for_each = var.service_account_roles

  service_account_role = each.key
  folder_id = "${var.folder_id}"
  service_account_name = "${var.service_account_name}"
}

module "create_k8s_cluster" {
  source = "../submodules/create_k8s_cluster"

  cluster_name = "${var.cluster_name}"
  network_name = "${var.network_name}"
  subnet_name = "${var.subnet_name}"
  service_account_name = "${var.service_account_name}"
}
