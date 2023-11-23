resource "azurerm_storage_account" "storage_account" {
    name                          = var.storage_account_name
    resource_group_name           = var.storage_resource_group_name
    location                      = var.location
    account_tier                  = var.account_tier_storage
    account_replication_type      = var.account_replication_type_storage
    account_kind                  = var.account_kind_storage
    public_network_access_enabled = var.public_network_access_enabled
    min_tls_version               = var.min_tls_version
     
}