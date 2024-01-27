resource "azurerm_virtual_network" "virtual_network" {
  name                = "${var.virtual_network_name}-${var.environment}"
  location            = var.virtual_network_location
  resource_group_name = var.resource_group_name
  address_space       = var.virtual_network_address_space
  tags                = { Environment = "${var.environment}" }
}