resource "azurerm_resource_group" "default" {
  name     = "sframpup-rg"
  location = "West US 2"

  tags = {
    environment = "sframpup"
  }
}
data "azuread_service_principal" "aks_principal" {
  application_id = var.appId
}

data "azurerm_container_registry" "acr" {
  name                = var.container_registry_name
  resource_group_name = var.container_registry_resource_group_name
}

resource "azurerm_role_assignment" "aks_sp_container_registry" {
  scope                = data.azurerm_container_registry.acr.id
  role_definition_name = "AcrPull"
  principal_id         = data.azuread_service_principal.aks_principal.id
}

resource "azurerm_kubernetes_cluster" "default" {
  name                = "sframpup-aks"
  location            = azurerm_resource_group.default.location
  resource_group_name = azurerm_resource_group.default.name
  dns_prefix          = "sframpup-k8s"

  agent_pool_profile {
    name            = "default"
    count           = 2
    vm_size         = "Standard_D2_v2"
    os_type         = "Linux"
    os_disk_size_gb = 30
  }

  service_principal {
    client_id     = var.appId
    client_secret = var.password
  }

  role_based_access_control {
    enabled = true
  }

  tags = {
    environment = "sframpup"
  }
}
