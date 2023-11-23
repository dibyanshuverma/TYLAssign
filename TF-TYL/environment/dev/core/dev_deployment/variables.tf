variable "location" {
  type = string
}

variable "hub_spoke_resource_group" {
  type = list(string)
}

variable "hub_vnet_name" {
  type = string
}


variable "hub_network_address_prefix" {
  type = list(string)
}

variable "hub_subnet_names" {
  type = list(string)
}


variable "hub_subnet_address_prefixes" {
  type = list(string)
}

variable "hub_network_dns_servers" {
  type = list(string)
}

variable "hub_service_endpoints" {
  type = list(list(string))
}

variable "spoke_vnet_name" {
  type = string
}


variable "spoke_subnet_names" {
  type = list(string)

}

variable "spoke_subnet_address_prefixes" {
  type = list(string)
}

variable "spoke_network_dns_servers" {
  type = list(string)
}

variable "spoke_service_endpoints" {
  type = list(list(string))
}

variable "spoke_network_address_prefix" {
  type = list(string)
}

variable "storage_account_name" {
  type = string
}

variable "account_tier_storage" {
  type = string
}

variable "account_replication_type_storage" {
  type = string

}

variable "public_network_access_enabled" {
  type = bool
}

variable "erc_name" {
  type        = string
  description = "Name of the express route"
}

variable "resource_group_name" {
  type = string
}

variable "service_provider_name" {
  type = string
}


variable "peering_location" {
  type = string
}

variable "bandwidth" {
  type    = number
  default = 50
}


variable "sku_tier" {
  type    = string
  default = "Standard"
}

variable "sku_family" {
  type    = string
  default = "MeteredData"
}

variable "subnet_name" {
  type = string
}

variable "network_rg" {
  type = string
}

variable "vnet_name" {
  type = string
}

variable "kv_name" {
  type = string
}

variable "kv_rg" {
  type = string
}


variable "sp_password_secret" {
  type = string
}

variable "aks_name" {
  type = string
}

variable "aks_resource_group_name" {
  type = string
}

variable "aks_version" {
  type = string
}

variable "node_pool_name" {
  type = string
}

variable "node_pool_type" {
  type = string
}

variable "enable_auto_scaling" {
  type    = bool
  default = true
}

variable "node_count" {
  type = string
}

variable "node_size" {
  type = string
}

variable "os_disk_size" {
  type    = string
  default = "50"
}

variable "max_pods" {
  type    = string
  default = "30"
}

variable "min_count" {
  type    = number
  default = 2
}

variable "max_count" {
  type    = number
  default = 5
}

variable "service_cidr" {
  type = string
}

variable "dns_service_ip" {
  type = string
}

variable "node_resource_group" {
  type = string
}

variable "sp_id" {
  type = string
}

variable "role_based_access_control_enabled" {
  type    = bool
  default = true
}

variable "tags" {
  type = map(string)
  default = {

  }
}
variable "private_cluster_enabled" {
  type = bool
}
variable min_tls_version {
  type = string
  default ="1.2"
}