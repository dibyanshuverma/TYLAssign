variable "location" {
  type = string
  description = "location in which route table will be created"
}

variable "resource_group_name" {
  type = string
  description = "resource group name"
}

variable "route_table_name" {
    type = string
    description = "Route table name"
  
}

variable "routes" {
    type = map(any)
  
}

