resource "azurerm_network_security_group" "rg_nsg" {
    name = var.rg_nsg
    location = local.location
    resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_network_security_rule" "rg_nsg_rules" {
    name                       = "AllowSSH"
    priority                   = 1001
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
    resource_group_name = azurerm_resource_group.rg.name
    network_security_group_name = azurerm_network_security_group.rg_nsg.name
}
