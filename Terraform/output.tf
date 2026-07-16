output "Resource_group_name" {
  value = azurerm_resource_group.rg_web.name
}
output "Resource_group_location" {
  value = azurerm_resource_group.rg_web.location
}
output "virtual_network" {
  value = azurerm_virtual_network.rg_web_network.name
}
output "Azure_container_registry" {
  value = azurerm_container_registry.rg_web_cr.name
}
output "Azure_kubernetes_cluster" {
  value = azurerm_kubernetes_cluster.rg_web_kc.name
}
output "azurerm_subnet" {
  value = azurerm_subnet.rg_web_sn.name
}