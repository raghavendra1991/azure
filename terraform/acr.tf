resource "azurerm_container_registry" "rg_acr" {
  name                = "xdg1kor"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Premium"
  admin_enabled       = false
  
}
