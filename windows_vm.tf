resource "azurerm_windows_virtual_machine" "windows_vm" {
    name = format("%s%d", "${var.vm_prefix}", count.index)
    count = 2
    resource_group_name = azurerm_resource_group.rg.name
    location            = azurerm_resource_group.rg.location
    size                = "Standard_F2"
    admin_username      = "${var.admin_user}"
    admin_password      = "${var.admin_pass}"

    network_interface_ids = [azurerm_network_interface.nic[count.index].id, ]

    os_disk {
      caching               = "ReadWrite"
      storage_account_type  = "Standard_LRS"
    }

    source_image_reference {
        publisher   = "MicrosoftWindowsServer"
        offer       = "WindowsServer"
        sku         = "2016-DataCenter"
        version     = "latest"
    }
}
