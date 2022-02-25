resource "azurerm_windows_virtual_machine" "ddc" {
    name = format("%s%d", "${var.ddc_vm_prefix}", count.index)
    count = 2
    resource_group_name = azurerm_resource_group.rg.name
    location            = azurerm_resource_group.rg.location
    size                = "${var.ddc_vm_size}"
    admin_username      = "${var.ddc_admin_user}"
    admin_password      = "${var.ddc_admin_pass}"

    network_interface_ids = [azurerm_network_interface.nic[count.index].id, ]

    os_disk {
      caching               = "${var.ddc_os_caching}"
      storage_account_type  = "${var.ddc_os_storage_type}"
    }

    source_image_reference {
        publisher   = "${var.ddc_source_publisher}"
        offer       = "${var.ddc_source_offer}"
        sku         = "${var.ddc_source_sku}"
        version     = "${var.ddc_source_version}"
    }
}
