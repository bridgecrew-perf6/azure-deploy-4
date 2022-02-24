resource "azurerm_windows_virtual_machine" "ddc" {
    name = format("%s%d", "${var.vm_prefix}", count.index)
    count = 2
    resource_group_name = azurerm_resource_group.rg.name
    location            = azurerm_resource_group.rg.location
    size                = "${var.vm_size}"
    admin_username      = "${var.admin_user}"
    admin_password      = "${var.admin_pass}"

    network_interface_ids = [azurerm_network_interface.nic[count.index].id, ]

    os_disk {
      caching               = "${var.os_caching}"
      storage_account_type  = "${var.os_storage_type}"
    }

    source_image_reference {
        publisher   = "${var.source_publisher}"
        offer       = "${var.source_offer}"
        sku         = "${var.source_sku}"
        version     = "${var.source_version}"
    }
}


