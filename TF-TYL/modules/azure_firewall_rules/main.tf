resource "azurerm_firewall_network_rule_collection" "firewall_network_rule_collection" {
  count               = length(var.firewall_network_rules_collection)
  name                = var.firewall_network_rules_collection[count.index].name
  azure_firewall_name = var.firewall_name
  resource_group_name = var.resource_group_name
  priority            = var.firewall_network_rules_collection[count.index].priority
  action              = var.firewall_network_rules_collection[count.index].action 

  dynamic "rule" {
    for_each = [for r in var.firewall_network_rules_collection[count.index].rules : {
        name                  = r.name
        source_addresses      = r.source_addresses
        destination_ports     = r.destination_ports
        destination_addresses = r.destination_addresses
        protocols             = r.protocols

    }]
    content {
      name                    = rule.value.name
      source_addresses        = rule.value.source_addresses
      destination_ports       = rule.value.dedestination_ports
      destination_addresses   = rule.value.destination_addresses
      protocols               = rule.value.protocols 

    }

  }
}