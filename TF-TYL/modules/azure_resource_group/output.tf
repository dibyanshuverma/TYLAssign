output "resource_group_names" {
  value = azurerm_resource_group.resource_group.*.name
}