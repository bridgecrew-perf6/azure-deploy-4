# Create Network Interface Connectors
resource "azurerm_network_interface" "nic" {
    name = format("%s%d", "${var.nic_prefix}", count.index)
    count = 2
    resource_group_name = azurerm_resource_group.rg.name
    location            = azurerm_resource_group.rg.location

    ip_configuration {
        name = "internal"
        subnet_id = azurerm_subnet.sub.id
        private_ip_address_allocation = "${var.private_ip_allocation}"
    }
}
