resource "azurerm_virtual_machine" "rg_vm" {
    name = local.vm_name
    location = local.location
    vm_size = local.vm_size
    resource_group_name = azurerm_resource_group.rg.name
    network_interface_ids = [azurerm_network_interface.rg_nic.id]
        
    storage_os_disk {
        name              = "${local.vm_name}-osdisk"
        caching           = "ReadWrite"
        create_option     = "FromImage"
        managed_disk_type = "Standard_LRS"
    }

    storage_image_reference {
        publisher = "Canonical"
        offer     = "UbuntuServer"
        sku       = "16.04-LTS"
        version   = "latest"
    }

    os_profile {
        computer_name  = local.vm_name
        admin_username = local.admin_username
        admin_password = local.admin_password
    }

    os_profile_linux_config {
        disable_password_authentication = false
    }
}
