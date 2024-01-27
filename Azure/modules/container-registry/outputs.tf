output "container_registry_id" {
  description = "The id of the newly created container registry"
  value       = azurerm_container_registry.container_registry.id
}

output "container_registry_login_server" {
  description = "The login url of the newly created container registry"
  value       = azurerm_container_registry.container_registry.login_server
}

output "container_registry_identity" {
  description = "The identity of the newly created container registry"
  value       = azurerm_container_registry.container_registry.identity
}