resource "azurerm_container_group" "rg_acg" {
  name                = "rg_acg"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  ip_address_type     = "Public"
  os_type             = "Linux"

  image_registry_credential {
    username = "duvva"
    password = "duvva"
    server   = "azurecr.io"
  }

  container {
    name   = "app"
    image  = "azurecr.io/mvptaskwebapp:latest"
    cpu    = "0.5"
    memory = "1.5"

    ports {
      port     = 5000
      protocol = "TCP"
    }
  }
}
