output "virtual_network_name" {
  description = "The name of the newly created vNet"
  value       = azurerm_virtual_network.virtual_network.name
}