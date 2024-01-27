output "subnet_name" {
  description = "The name of the newly created subnet"
  value       = azurerm_subnet.subnet.name
}

output "subnet_id" {
  description = "The name of the newly created subnet"
  value       = azurerm_subnet.subnet.id
}