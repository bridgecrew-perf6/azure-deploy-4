resource "azurerm_mssql_virtual_machine" "sql_vm" {
    virtual_machine_id = azurerm_windows_virtual_machine.windows_vm[1].id
    sql_license_type = "${var.sql_license}"
    
    sql_connectivity_update_username = "${var.sql_user}"
    sql_connectivity_update_password = "${var.sql_pass}"

}