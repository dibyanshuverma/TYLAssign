#Azure Firewall public IP

resource "azurerm_public_ip" "firewall_pip" {
  name                = var.firewall_pip_name
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = var.allocation_method
  sku                 = var.sku_pip
  zones               = var.pip_availability_zones
}

#Azure Firewall

resource "azurerm_firewall" "firewall" {
    name                = var.firewall_pip_name
    resource_group_name = var.resource_group_name
    location            = var.location
    zones               = var.firewall_availability_zones
    sku_name            = var.sku_name_firewall
    sku_tier            = var.sku_tier_firewall 

    ip_configuration {
      name                 = var.firewall_pip_name
      subnet_id            = var.subnet_id
      public_ip_address_id = azurerm_public_ip.firewall_pip.id
    }
    depends_on = [ azurerm_public_ip.firewall_pip ]
  
}