resource "azurerm_subnet" "sub" {
    name                    = "internal"
    resource_group_name     = "${var.resource_group_name}"
    virtual_network_name    = azurerm_virtual_network.vnet.name
    address_prefixes        = ["10.0.2.0/24"]
}

