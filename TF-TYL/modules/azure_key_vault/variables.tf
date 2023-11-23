variable "key_vault_name" {
  type        = string
  description = "Name of the key vault"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "sku" {
    type = string
    description = "Sku for key vault"
  
}

variable "location" {
  type = string
  description = "Location/Region of the key vault"
}

variable "kv_access_policies" {
    type = list(object({
        kv_key_permissions     = list(string)
        kv_secret_permissions  = list(string)
        kv_storage_permissions = list(string)
    }))
    default = []
}