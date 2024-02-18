# Resource group
module "m_resource_group" {
  source                  = "../../modules/resource-group"
  environment             = var.environment
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
}

# Virtual network
module "m_virtual_network" {
  source                        = "../../modules/virtual-network"
  environment                   = var.environment
  virtual_network_name          = var.virtual_network_name
  virtual_network_address_space = var.virtual_network_address_space
  virtual_network_location      = var.virtual_network_location
  resource_group_name           = module.m_resource_group.resource_group_name
}

# Subnet
module "m_subnet" {
  source                  = "../../modules/subnet"
  environment             = var.environment
  subnet_name             = var.subnet_name
  subnet_address_prefixes = var.subnet_address_prefixes
  virtual_network_name    = module.m_virtual_network.virtual_network_name
  resource_group_name     = module.m_resource_group.resource_group_name
}

# Container Registry
module "m_container_registry" {
  source                               = "../../modules/container-registry"
  environment                          = var.environment
  container_registry_name              = var.container_registry_name
  container_registry_sku               = var.container_registry_sku
  container_registry_location          = var.container_registry_location
  resource_group_name                  = module.m_resource_group.resource_group_name
  container_registry_georep_loc        = var.container_registry_georep_loc
  container_registry_georep_zr_enabled = var.container_registry_georep_zr_enabled
}

# Kubenetes Cluster
module "m_kubernetes_cluster" {
  source                                           = "../../modules/kubernetes-cluster"
  environment                                      = var.environment
  kubernetes_cluster_name                          = var.kubernetes_cluster_name
  kubernetes_cluster_location                      = var.kubernetes_cluster_location
  resource_group_name                              = module.m_resource_group.resource_group_name
  kubernetes_cluster_default_node_pool_name        = var.kubernetes_cluster_default_node_pool_name
  kubernetes_cluster_default_node_pool_vm_size     = var.kubernetes_cluster_default_node_pool_vm_size
  kubernetes_cluster_default_node_pool_node_count  = var.kubernetes_cluster_default_node_pool_node_count
  kubernetes_cluster_dns_prefix                    = var.kubernetes_cluster_dns_prefix
  kubernetes_cluster_identity_type                 = var.kubernetes_cluster_identity_type
  container_registry_id                            = module.m_container_registry.container_registry_id
  kubernetes_cluster_version                       = var.kubernetes_cluster_version
  kubernetes_cluster_network_plugin                = var.kubernetes_cluster_network_plugin
  kubernetes_cluster_network_policy                = var.kubernetes_cluster_network_policy
  kubernetes_cluster_service_cidr                  = var.kubernetes_cluster_service_cidr
  kubernetes_cluster_dns_service_ip                = var.kubernetes_cluster_dns_service_ip
  kubernetes_cluster_sku_tier                      = var.kubernetes_cluster_sku_tier
  kubernetes_cluster_max_surge                     = var.kubernetes_cluster_max_surge
  kubernetes_cluster_node_pool_name                = var.kubernetes_cluster_node_pool_name
  kubernetes_cluster_node_pool_vm_size             = var.kubernetes_cluster_node_pool_vm_size
  kubernetes_cluster_node_pool_enable_auto_scaling = var.kubernetes_cluster_node_pool_enable_auto_scaling
  kubernetes_cluster_node_pool_min_count           = var.kubernetes_cluster_node_pool_min_count
  kubernetes_cluster_node_pool_max_count           = var.kubernetes_cluster_node_pool_max_count
  kubernetes_cluster_node_pool_max_surge           = var.kubernetes_cluster_node_pool_max_surge
  subnet_id                                        = module.m_subnet.subnet_id
}