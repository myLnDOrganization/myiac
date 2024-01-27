resource "azurerm_container_registry" "container_registry" {
  name                = "${var.container_registry_name}3${var.environment}"
  location            = var.container_registry_location
  resource_group_name = var.resource_group_name
  sku                 = var.container_registry_sku
  tags                = { Environment = "${var.environment}" }
  georeplications {
    location                = var.container_registry_georep_loc
    zone_redundancy_enabled = var.container_registry_georep_zr_enabled
    tags                    = { Environment = "${var.environment}" }
  }
}