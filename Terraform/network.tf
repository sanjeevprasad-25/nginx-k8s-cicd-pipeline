resource "azurerm_virtual_network" "rg_web_network" {
  name                = var.rg_web_net
  location            = azurerm_resource_group.rg_web.location
  resource_group_name = azurerm_resource_group.rg_web.name
  address_space       = ["10.0.0.0/16"]
}
resource "azurerm_subnet" "rg_web_sn" {
  name                 = var.rg_sn
  resource_group_name  = azurerm_resource_group.rg_web.name
  virtual_network_name = azurerm_virtual_network.rg_web_network.name
  address_prefixes     = ["10.0.0.0/24"]
}
