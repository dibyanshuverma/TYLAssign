variable "name" {
  type = string
}

variable "location" {
    type = string
}

variable "resource_group_name" {
  type = string
}

variable "nsg_rules" {
  type = list(any)
  description = "collection of Network Security Rules"
}

variable "subnet_id" {
  type = string
  description = "Subnet to associate with NSG"
}