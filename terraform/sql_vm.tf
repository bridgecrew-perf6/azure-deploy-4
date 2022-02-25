resource "azurerm_windows_virtual_machine" "sql_vm" {
    name = format("%s%d", "${var.sql_vm_prefix}", count.index)
    count = 2
    resource_group_name = azurerm_resource_group.rg.name
    location            = azurerm_resource_group.rg.location
    size                = "${var.sql_vm_size}"
    admin_username      = "${var.sql_admin_user}"
    admin_password      = "${var.sql_admin_pass}"

    network_interface_ids = [azurerm_network_interface.nic[count.index].id, ]

    os_disk {
      caching               = "${var.sql_os_caching}"
      storage_account_type  = "${var.sql_os_storage_type}"
    }

    source_image_reference {
        publisher   = "${var.sql_source_publisher}"
        offer       = "${var.sql_source_offer}"
        sku         = "${var.sql_source_sku}"
        version     = "${var.sql_source_version}"
    }
}

resource "azurerm_mssql_virtual_machine" "sql_vm" {
    count = 2
    virtual_machine_id = azurerm_windows_virtual_machine.sql_vm[count.index].id
    sql_license_type = "${var.sql_license_type}"
    sql_connectivity_update_username = "${var.sql_user}"
    sql_connectivity_update_password = "${var.sql_pass}"
}
