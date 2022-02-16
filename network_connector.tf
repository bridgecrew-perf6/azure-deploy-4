resource "azurerm_network_interface" "nic" {
    name = format("%s%d", "${var.nic_prefix}", count.index)
    count = 2
    location = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name

    ip_configuration {
        name = "internal"
        subnet_id = azurerm_subnet.sub.id
        private_ip_address_allocation = "Dynamic"
    }
}
