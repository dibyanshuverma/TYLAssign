variable "location" {
  type = string
  description = "region of the firewall"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "firewall_name" {
  type = string
  description = "the name of the azure firewall"

}

variable "firewall_pip_name" {
  type = string
  description = "the name of the public IP address which is assigned to the firewall"
}

variable "allocation_method" {
    type = string
    description = "the allocatin method of the IP address for the azure firewall"
    default = "static"
}

variable "sku_pip" {
   type = string
    description = "the sku of the IP address"
    default = "Standard"
}

variable "sku_name_firewall" {
   type = string
    description = "the sku name of the firewall"
    
}

variable "sku_tier_firewall" {
   type = string
    description = "the sku tier of the firewall"
  
}



variable "pip_availability_zones" {
   type = list(any)
    description = "Availability zones for PIP"
    default = ["1"]
}

variable "subnet_id" {
  type = string
  description = "the id  of the subnet which azure firewall needs to use"

}

variable "firewall_availability_zones" {
   type = list(any)
    description = "Availability zones for Firewall"
    default = ["1"]
}