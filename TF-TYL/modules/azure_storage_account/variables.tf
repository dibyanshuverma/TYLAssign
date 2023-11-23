variable "location" {
    type = string
    description = "location where storage account will be deployed"

}

variable "storage_account_name" {
  type = string
  description = "Name of the storage accunt"
}

variable "storage_resource_group_name" {
  type = string
  description = "RG in which Storage account will be created"
}

variable "account_tier_storage" {
  type = string
  description = "defines the tier to use for this storage account"
  default = "Standard"
}

variable "account_replication_type_storage" {
    type = string
    description = "Defines the type of replication to use for this storage account"
  
}

variable "account_kind_storage" {
    type = string
    description = "Defines the KInd of account"
    default = "StorageV2"
  
}

variable "public_network_access_enabled" {
  type = bool
}
variable min_tls_version {
  type = string
  default ="1.2"
}