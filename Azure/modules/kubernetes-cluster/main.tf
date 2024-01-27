resource "azurerm_kubernetes_cluster" "kubernetes_cluster" {
  name                = "${var.kubernetes_cluster_name}-${var.environment}"
  location            = var.kubernetes_cluster_location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.kubernetes_cluster_dns_prefix
  identity {
    type = var.kubernetes_cluster_identity_type
  }
  default_node_pool {
    name    = var.kubernetes_cluster_default_node_pool_name
    vm_size = var.kubernetes_cluster_default_node_pool_vm_size
    node_count = var.kubernetes_cluster_default_node_pool_node_count
    vnet_subnet_id = var.subnet_id
    tags    = { Environment = "${var.environment}" }
  } 
  kubernetes_version = var.kubernetes_cluster_version
  network_profile {
    network_plugin    = var.kubernetes_cluster_network_plugin
    network_policy    = var.kubernetes_cluster_network_policy
    service_cidr = var.kubernetes_cluster_service_cidr
    dns_service_ip = var.kubernetes_cluster_dns_service_ip
  }
  sku_tier = var.kubernetes_cluster_sku_tier
  tags                = { Environment = "${var.environment}" }
}

resource "azurerm_kubernetes_cluster_node_pool" "kubernetes_cluster_node_pool" {
  name                  = var.kubernetes_cluster_node_pool_name
  kubernetes_cluster_id = azurerm_kubernetes_cluster.kubernetes_cluster.id
  vm_size               = var.kubernetes_cluster_node_pool_vm_size
  enable_auto_scaling            = var.kubernetes_cluster_node_pool_enable_auto_scaling
  min_count = var.kubernetes_cluster_node_pool_min_count
  max_count = var.kubernetes_cluster_node_pool_max_count
  upgrade_settings{
    max_surge = var.kubernetes_cluster_node_pool_max_surge
  }
  vnet_subnet_id = var.subnet_id
  tags = {
    Environment = "${var.environment}"
  }
}

resource "azurerm_role_assignment" "role_assignment" {
  principal_id                     = azurerm_kubernetes_cluster.kubernetes_cluster.kubelet_identity[0].object_id
  role_definition_name             = "AcrPull"
  scope                            = var.container_registry_id
  skip_service_principal_aad_check = true
}