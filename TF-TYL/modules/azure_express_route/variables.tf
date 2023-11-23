   variable "erc_name" {
     type = string
     description = "Name of the express route"
   }

   variable "resource_group_name" {
     type = string
   }
   
   variable "service_provider_name" {
     type = string
   }

   variable "location" {
     type = string
   }

   variable "peering_location" {
     type = string
   }

   variable "bandwidth" {
     type = number
     default = 50
   }
  
  
  variable "sku_tier" {
    type = string
    default = "Standard"
  }

  variable "sku_family" {
    type = string
    default = "MeteredData"
  }
      