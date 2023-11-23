variable "vnet1_subscription_id" {
    type = string
    description = "Azure Vnet 1 subscription id"
  
}

variable "vnet1_resource_group_name" {
  type = string
  description = "Azure vnet 1 resource group"
}

variable "vnet1_name" {
    type = string
    description = "Azure vnet 1 name"
  
}

variable "vnet1_peering_name" {
    type = string
    description = "Vnet 1 to 2 peering name"
}

variable "vnet1_peering_properties" {
    type = map(any)
    description = "vnet 1 peering settings"
  
}

variable "vnet2_subscription_id" {
    type = string
    description = "Azure Vnet 2 subscription id"
  
}

variable "vnet2_resource_group_name" {
  type = string
  description = "Azure vnet 2 resource group"
}

variable "vnet2_name" {
    type = string
    description = "Azure vnet 2 name"
  
}

variable "vnet2_peering_name" {
    type = string
    description = "Vnet 2 to 1 peering name"
}

variable "vnet2_peering_properties" {
    type = map(any)
    description = "vnet 2 peering settings"
  
}