# Network Security Groups
resource "azurerm_network_security_group" "network_nsg" {
    name                = var.name
    resource_group_name = var.resource_group_name
    location            = var.location
     
}


# Network Security Group Rules

resource "azurerm_network_security_rule" "network_nsg_rules" {
  for_each                     = var.nsg_rules
  name                         = each.key
  priority                     = each.value.priority
  direction                    = each.value.direction
  access                       = each.value.access
  protocol                     = each.value.protocol
  source_port_range            = each.value.source_port_range
  source_port_ranges           = each.value.source_port_ranges
  source_address_prefix        = each.value.source_address_prefix
  source_address_prefixes      = each.value.source_address_prefixes
  destination_address_prefix   = each.value.destination_address_prefix
  destination_address_prefixes = each.value.destination_address_prefixes
  resource_group_name          = var.resource_group_name
  network_security_group_name  = azurerm_network_security_group.network_nsg.name
  depends_on                   = [azurerm_network_security_group.network_nsg]
}

#Association

resource "azurerm_subnet_network_security_group_association" "nsg_subnet_assoc" {
    subnet_id                 = var.subnet_id
    network_security_group_id = azurerm_network_security_group.network_nsg.id
    depends_on                = [azurerm_network_security_group.network_nsg]
  
}