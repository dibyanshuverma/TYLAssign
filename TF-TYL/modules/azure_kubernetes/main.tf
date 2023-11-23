data "azurerm_subnet" "aks_subnet"{
    name                 = var.subnet_name
    resource_group_name  = var.network_rg
    virtual_network_name = var.vnet_name
}

data "azurerm_key_vault" "aks_kv"{
    name                = var.kv_name
    resource_group_name = var.kv_rg
}

data "azurerm_key_vault_secret" "key_vault_secret_password"{
    name         = var.sp_password_secret
    key_vault_id = data.azurerm_key_vault.aks_kv.id
}

resource "azurerm_kubernetes_cluster" "aks_cluster" {
    name                = var.aks_name
    location            = var.location
    resource_group_name = var.aks_resource_group_name
    kubernetes_version  = var.aks_version
    private_cluster_enabled = var.private_cluster_enabled


    default_node_pool{
        name                = var.node_pool_name
        type                = var.node_pool_type
        enable_auto_scaling = var.enable_auto_scaling
        node_count          = var.node_count
        vm_size             = var.node_size
        os_disk_size_gb     = var.os_disk_size
        max_pods            = var.max_pods
        min_count           = var.min_count
        max_count           = var.max_count
        vnet_subnet_id      = data.azurerm_subnet.aks_cluster.id

    } 
    network_profile {
      network_plugin = "azure"
      service_cidr   = var.service_cidr
      dns_service_ip = var.dns_service_ip

    }
    node_resource_group = var.node_resource_group
    service_principal {
      client_id = var.sp_id
      client_secret = data.azurerm_key_vault_secret.key_vault_secret_password.value
    }
    role_based_access_control_enabled = var.role_based_access_control_enabled
    tags = var.tags

}