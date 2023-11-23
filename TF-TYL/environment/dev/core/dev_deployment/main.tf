terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.0.0"
    }
  }
}

terraform {
  backend "azurerm" {

  }
}

module "hub_spoke_vnet_resource_group" {
  source               = "../../../../modules/azure_resource_group"
  location             = var.location
  resource_group_names = var.hub_spoke_resource_group
}

module "az_hub_vnet" {
  source                      = "../../../../modules/azure_virtual_network"
  network_name                = var.hub_vnet_name
  location                    = var.location
  network_resource_group_name = module.hub_spoke_vnet_resource_group.name[0]
  network_address_prefix      = var.hub_network_address_prefix
  subnet_names                = var.hub_subnet_names
  subnet_address_prefixes     = var.hub_subnet_address_prefixes
  network_dns_servers         = var.hub_network_dns_servers
  service_endpoints           = var.hub_service_endpoints

}

module "az_cspoke_vnet" {
  source                      = "../../../../modules/azure_virtual_network"
  network_name                = var.spoke_vnet_name
  location                    = var.location
  network_resource_group_name = module.hub_spoke_vnet_resource_group.name[1]
  network_address_prefix      = var.spoke_network_address_prefix
  subnet_names                = var.spoke_subnet_names
  subnet_address_prefixes     = var.spoke_subnet_address_prefixes
  network_dns_servers         = var.spoke_network_dns_servers
  service_endpoints           = var.spoke_service_endpoints

}

module "az_storage_account" {
  source                           = "../../../../modules/azure_storage_account"
  storage_account_name             = var.storage_account_name
  storage_resource_group_name      = module.hub_spoke_vnet_resource_group.name[1]
  location                         = var.location
  account_tier_storage             = var.account_tier_storage
  account_replication_type_storage = var.account_replication_type_storage
  public_network_access_enabled    = var.public_network_access_enabled
  min_tls_version                  = var.min_tls_version 

}

module "az_express_route" {
  source                = "../../../../modules/azure_express_route"
  erc_name              = var.erc_name
  resource_group_name   = var.resource_group_name
  location              = var.location
  service_provider_name = var.service_provider_name
  peering_location      = var.peering_location
  bandwidth             = var.bandwidth
  sku_family            = var.sku_family
  sku_tier              = var.sku_tier
}

module "az_aks_cluster" {
  source                            = "../../../../modules/azure_kubernetes"
  aks_resource_group_name           = var.aks_resource_group_name
  location                          = var.location
  vnet_name                         = var.spoke_vnet_name
  network_rg                        = var.network_rg
  subnet_name                       = var.subnet_name
  kv_name                           = var.kv_name
  kv_rg                             = var.kv_rg
  sp_password_secret                = var.sp_password_secret
  aks_version                       = var.aks_version
  private_cluster_enabled           = var.private_cluster_enabled
  node_pool_name                    = var.node_pool_name
  node_pool_type                    = var.node_pool_type
  enable_auto_scaling               = var.enable_auto_scaling
  node_count                        = var.node_count
  node_size                         = var.node_size
  os_disk_size                      = var.os_disk_size
  max_pods                          = var.max_pods
  min_count                         = var.min_count
  max_count                         = var.max_count
  service_cidr                      = var.service_cidr
  dns_service_ip                    = var.dns_service_ip
  sp_id                             = var.sp_id
  role_based_access_control_enabled = var.role_based_access_control_enabled
  tags                              = var.tags
  node_resource_group               = var.node_resource_group
  aks_name                          = var.aks_name

}
