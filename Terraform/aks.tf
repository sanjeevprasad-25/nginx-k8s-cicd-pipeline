resource "azurerm_kubernetes_cluster" "rg_web_kc" {
  name                = var.rg_web_aks
  resource_group_name = azurerm_resource_group.rg_web.name
  location            = azurerm_resource_group.rg_web.location
  dns_prefix          = "nginxk8saks"
  kubernetes_version  = "1.34.9"
  network_profile {
    network_plugin = "azure"
    service_cidr   = "10.240.0.0/16"
    dns_service_ip = "10.240.0.10"
  }
  default_node_pool {
    name       = "nginxk8s"
    node_count = 1
    vm_size    = "Standard_D4s_v3"
    vnet_subnet_id = azurerm_subnet.rg_web_sn.id
  }
  identity {
    type = "SystemAssigned"
  }
}