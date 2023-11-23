variable "network_name" {
    type        = string
    description = "Virtual Network Name"
  
}

variable "network_resource_group_name" {
  type        = string
  description = "Name of network resource group"
}

variable "subnet_names" {
  type        = list(string)
  description = "Names of the subnet"
}

variable "subnet_address_prefixes" {
  type        = list(string)
  description = "Prefixes of the subnet"
}

variable "location" {
  type        = string
  description = "The location/region where the core network will be created"
}

variable "network_address_prefix" {
  type        = list(string)
  description = "Address Prefixes of the virtual network"
}

variable "network_dns_servers" {
  type        = list(string)
  description = "Address network dns addresses"
}

variable "service_endpoints" {
  type = list(list(string))
  default = []
}