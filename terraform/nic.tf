resource "azurerm_network_interface" "rg_nic" {
    name = "var.nic"
    location = local.location
    resource_group_name = azurerm_resource_group.rg.name

    ip_configuration {
        name                            =  "ipconfig1"
        subnet_id                       =  azurerm_subnet.rg_subnet.id
        private_ip_address_allocation   =  "Dynamic"
        public_ip_address_id            =  azurerm_public_ip.rg_public_ip.id
    }
}
