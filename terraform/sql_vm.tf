resource "azurerm_mssql_virtual_machine" "sql_vm" {
    count = 2
    virtual_machine_id = azurerm_windows_virtual_machine.ddc[count.index].id
    sql_license_type = "${var.sql_license_type}"

    sql_connectivity_update_username = "${var.sql_user}"
    sql_connectivity_update_password = "${var.sql_pass}"
}
