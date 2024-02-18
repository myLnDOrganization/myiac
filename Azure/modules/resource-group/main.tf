resource "azurerm_resource_group" "resource_group" {
  name     = "${var.resource_group_name}-${var.environment}"
  location = var.resource_group_location
  tags     = { Environment = "${var.environment}" }
}