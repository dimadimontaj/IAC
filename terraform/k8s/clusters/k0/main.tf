module "create_network" {
  source = "../../modules/create_vpc_network"
  
  network_name = var.network_name
}

module "create_subnet" {
  source = "../../modules/create_subnet"
  
  subnet_devposition = var.subnet_devposition
  subnet_zone = var.subnet_zone
  network_id = module.create_network.network_id
}

module "create_service_account" {
  source = "../../modules/create_service_account"
  
  service_account_name = var.service_account_name
  service_account_description = var.service_account_description
}

module "add_role_for_service_account" {
  source = "../../modules/add_role_for_service_account"
  
  for_each = var.service_account_roles

  service_account_role = each.key
  folder_id = var.folder_id
  service_account_id = module.create_service_account.service_account_id
}

module "create_k8s_cluster" {
  source = "../../modules/create_k8s_cluster"

  network_id = module.create_network.network_id
  subnet_zone = var.subnet_zone
  subnet_id = module.create_subnet.subnet_id
  service_account_id = module.create_service_account.service_account_id
}
