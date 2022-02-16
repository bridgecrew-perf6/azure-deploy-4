# Create a virtual network
resource "azurerm_virtual_network" "vnet" {
  name                = "${var.prefix}vnet"
  address_space       = ["10.0.0.0/16"]
  resource_group_name = "${var.resource_group_name}"
  location            = "${var.resource_location}"
}