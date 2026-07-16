resource "azurerm_container_registry" "rg_web_cr" {
  name                = var.rg_web_acr
  resource_group_name = azurerm_resource_group.rg_web.name
  location            = azurerm_resource_group.rg_web.location
  sku                 = "Basic"
  admin_enabled       = true
}