resource "azurerm_windows_virtual_machine" "vda" {
    name = format("%s%d", "${var.vda_vm_prefix}", count.index)
    count = 1
    resource_group_name = azurerm_resource_group.rg.name
    location            = azurerm_resource_group.rg.location
    size                = "${var.vda_vm_size}"
    admin_username      = "${var.vda_admin_user}"
    admin_password      = "${var.vda_admin_pass}"

    network_interface_ids = [azurerm_network_interface.nic[count.index].id, ]

    os_disk {
      caching               = "${var.vda_os_caching}"
      storage_account_type  = "${var.vda_os_storage_type}"
    }

    source_image_reference {
        publisher   = "${var.vda_source_publisher}"
        offer       = "${var.vda_source_offer}"
        sku         = "${var.vda_source_sku}"
        version     = "${var.vda_source_version}"
    }
}