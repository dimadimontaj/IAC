variable folder_id {
  type        = string
}

# variable cluster_name {
#   type        = string
# }

variable network_name {
  type        = string
}

variable subnet_zone {
  type        = string
}

variable subnet_devposition {
  type        = list
}

variable service_account_name {
  type        = string
}

variable service_account_roles {
  type        = set(string)
}

variable service_account_description {
  type        = string
}
