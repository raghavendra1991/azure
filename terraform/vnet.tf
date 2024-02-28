resource "azurerm_virtual_network" "rg_vnet" {
    name = var.rg_vnet
    location = local.location
    resource_group_name = azurerm_resource_group.rg.name
    address_space = ["10.0.0.1/24"]
    dns_servers = ["10.0.0.4", "10.0.0.5"]

    tags = {
        name = "Testing"
    }

}
