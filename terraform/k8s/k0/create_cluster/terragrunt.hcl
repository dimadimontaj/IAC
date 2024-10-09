include "root" {
  path = find_in_parent_folders()
}

dependency "network" {
  config_path = "../../../../modules/submodules/create_vpc_network"
}

# dependency "subnet" {
#   config_path = "../../modules/submodules/create_subnet"
# }

# inputs = {
#   network_id = dependency.network.outputs.network_id
# }