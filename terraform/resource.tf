resource "azurerm_resource_group" "rg" {
    name = var.rg
    location = local.location

    tags = {
        name = "Testing"
    }
}
