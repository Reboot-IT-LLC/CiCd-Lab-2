resource "azurerm_resource_group" "aks" {
  name     = "RG-CiCd-Lab-1"
  location = "East US"
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "demoAKSCluster"
  location            = azurerm_resource_group.aks.location
  resource_group_name = azurerm_resource_group.aks.name
  dns_prefix          = "demoakscluster"

  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}
