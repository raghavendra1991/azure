resource "azurerm_subnet" "rg_subnet" {
    name = var.rg-subnet
    resource_group_name = azurerm_resource_group.rg.name
    virtual_network_name = azurerm_virtual_network.rg_vnet.name
    address_prefixes = ["10.0.1.0/24"]
}
