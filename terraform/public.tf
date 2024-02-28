resource "azurerm_public_ip" "rg_public_ip" {
    name = var.rg_pub_ip
    location = local.location
    resource_group_name = azurerm_resource_group.rg.name
    allocation_method = "Dynamic"
}
