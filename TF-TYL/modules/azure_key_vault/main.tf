resource "azurerm_key_vault" "key_vault" {
  name                = var.key_vault_name                   
  resource_group_name = var.resource_group_name
  tenant_id           = data.azurerm_client_config.current.tenant_id   
  sku_name            = var.sku 
  location            = var.location
  dynamic "access_policy" {
    for_each = var.kv_access_policies
    content {
        tenant_id           = data.azurerm_client_config.current.tenant_id
        object_id           = data.azurerm_client_config.current.object_id
        key_permissions     = access_policy.value["kv_key_permissions"]
        secret_permissions  = access_policy.value["kv_secret_permissions"]
        storage_permissions = access_policy.value["kv_storage_permissions"]
    }
  }

}