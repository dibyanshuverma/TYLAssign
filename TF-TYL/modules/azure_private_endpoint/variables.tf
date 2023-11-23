variable "endpoint_name" {
    type = string
    description = "Specifies the name of the endpoint. Changing"
  
}

variable "location" {
  type = string
  description = "location of private end-point"
}

variable "resource_group_name" {
    type = string
    description = "The resource group of private endpoint"
}

variable "subnet_id" {
  type = string
  description = "The ID of the subnet from which private IP addresses will be allocated for this private endpoint"
}

variable "private_service_connection_name" {
  type = string
  description = "Specifies the name of the Private service connection"
}

variable "private_connection_resource_id" {
    type = string
    description = "The ID of the private link enabled remote resource which this private endpoint should be connected to"
  
}

variable "dns_zone_name" {
  type = string
  description = "Specifies the name of the private dns zone group"
}

variable "private_dns_zone_ids" {
  type = list(string)
  description = "Specifies the list of private dns zones to include within the private_dns_zone_group"
}

variable "subresource_names" {
    type = list(string)
    description = "A list of subresource names which the Private Endpoint is able to connect to"
  
}