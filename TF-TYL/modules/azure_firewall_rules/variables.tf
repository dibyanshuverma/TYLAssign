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

variable "firewall_network_rules_collection" {
  type = list(any)
  description = "Azure firewall rule collection"
}