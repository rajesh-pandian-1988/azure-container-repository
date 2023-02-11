resource "azurerm_resource_group" "rajesh_registry_group" {
  name     = "container-2023"
  location = "West Europe"
}

resource "azurerm_container_registry" "rajesh_acr_reference" {
  name                = "containerRegistry1"
  resource_group_name = azurerm_resource_group.rajesh_registry_group.name
  location            = azurerm_resource_group.rajesh_registry_group.location
  sku                 = "Basic"
}

