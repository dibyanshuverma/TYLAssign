resource "azurerm_express_route_circuit" "erc" {
    name                  = var.erc_name
    resource_group_name   = var.resource_group_name
    service_provider_name = var.service_provider_name
    location              = var.location
    peering_location      = var.peering_location
    bandwidth_in_mbps     =  var.bandwidth
    
    sku {
      tier   = var.sku_tier
      family = var.sku_family
    }
}