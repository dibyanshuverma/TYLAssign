locals {
  vnet1_resource_id = "/subscriptions/${var.vnet1_subscription_id}/resourceGroups/${var.vnet1_resource_group_name}/providers/Microsoft.Network/virtualNetworks/${var.vnet1_name}"
  vnet2_resource_id = "/subscriptions/${var.vnet2_subscription_id}/resourceGroups/${var.vnet2_resource_group_name}/providers/Microsoft.Network/virtualNetworks/${var.vnet2_name}"
}

resource "azurerm_virtual_network_peering" "vnet1_to_vnet2_peering" {
    name                      = var.vnet1_peering_name
    resource_group_name       = var.vnet1_resource_group_name
    virtual_network_name      = var.vnet1_name
    remote_virtual_network_id = local.vnet2_resource_id
    allow_forwarded_traffic   = var.vnet1_peering_properties.forwarded_traffic
    allow_gateway_transit     = var.vnet1_peering_properties.gateway_transit
    use_remote_gateways       = var.vnet1_peering_properties.remote_gateways

  }

  resource "azurerm_virtual_network_peering" "vnet2_to_vnet1_peering" {
    name                      = var.vnet2_peering_name
    resource_group_name       = var.vnet2_resource_group_name
    virtual_network_name      = var.vnet2_name
    remote_virtual_network_id = local.vnet1_resource_id
    allow_forwarded_traffic   = var.vnet2_peering_properties.forwarded_traffic
    allow_gateway_transit     = var.vnet2_peering_properties.gateway_transit
    use_remote_gateways       = var.vnet2_peering_properties.remote_gateways

  }