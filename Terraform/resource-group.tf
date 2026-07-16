resource "azurerm_resource_group" "rg_web" {
  name     = var.rg_name
  location = var.rg_location
  tags = {
    environment = var.rg_env
  }
}