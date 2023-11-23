#Azure Virtual Network

resource "azurerm_virtual_network" "azure_network_vnet" {
    name                = var.network_name
    location            = var.location
    resource_group_name = var.network_resource_group_name
    address_space       = var.network_address_prefix
    dns_servers         = var.network_dns_servers
  
}

#Azure Virtual Network Subnets
resource "azurerm_subnet" "example" {
  count                = length(var.subnet_address_prefixes)  
  name                 = var.subnet_names[count.index]
  resource_group_name  = var.network_resource_group_name
  virtual_network_name = azurerm_virtual_network.azure_network_vnet.name
  address_prefixes     = var.subnet_address_prefixes[count.index]
  service_endpoints    = length(var.service_endpoints)<= count.index ? [] : var.service_endpoints[count.index]
  depends_on = [azurerm_virtual_network.azure_network_vnet]
}