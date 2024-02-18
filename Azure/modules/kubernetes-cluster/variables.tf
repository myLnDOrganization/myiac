variable "environment" {
  type        = string
  description = "Environment name in Azure"
}

variable "resource_group_name" {
  description = "The resource group where the kubernetes cluster is created. Changing this forces a new resource to be created."
  type        = string
}

variable "kubernetes_cluster_name" {
  description = "Name of the kubernetes cluster to create."
  type        = string
}

variable "kubernetes_cluster_location" {
  description = "The location/region where the kubernetes cluster is created. Changing this forces a new resource to be created."
  type        = string
}

variable "kubernetes_cluster_default_node_pool_name" {
  description = "The name that is used by the kubernetes cluster default node pool."
  type        = string
}

variable "kubernetes_cluster_default_node_pool_vm_size" {
  description = "The sku that is used by the kubernetes cluster default node pool."
  type        = string
}

variable "kubernetes_cluster_dns_prefix" {
  description = "The dns prefix that is used by the kubernetes cluster default node pool."
  type        = string
}

variable "kubernetes_cluster_default_node_pool_node_count" {
  description = "The dns prefix that is used by the kubernetes cluster default node pool."
  type        = number
}

variable "kubernetes_cluster_identity_type" {
  description = "The identity type that is used by the kubernetes cluster default node pool."
  type        = string
}

variable "container_registry_id" {
  description = "The resource group where the kubernetes cluster is created. Changing this forces a new resource to be created."
  type        = string
}

variable "kubernetes_cluster_version" {
  description = "The resource group where the kubernetes cluster is created. Changing this forces a new resource to be created."
  type        = string
}

variable "kubernetes_cluster_network_plugin" {
  description = "The resource group where the kubernetes cluster is created. Changing this forces a new resource to be created."
  type        = string
}

variable "kubernetes_cluster_network_policy" {
  description = "The resource group where the kubernetes cluster is created. Changing this forces a new resource to be created."
  type        = string
}

variable "kubernetes_cluster_service_cidr" {
  description = "The resource group where the kubernetes cluster is created. Changing this forces a new resource to be created."
  type        = string
}

variable "kubernetes_cluster_dns_service_ip" {
  description = "The resource group where the kubernetes cluster is created. Changing this forces a new resource to be created."
  type        = string
}

variable "kubernetes_cluster_sku_tier" {
  description = "The resource group where the kubernetes cluster is created. Changing this forces a new resource to be created."
  type        = string
}

variable "kubernetes_cluster_max_surge" {
  description = "The resource group where the kubernetes cluster is created. Changing this forces a new resource to be created."
  type        = string
}

variable "kubernetes_cluster_node_pool_name" {
  description = "The resource group where the kubernetes cluster is created. Changing this forces a new resource to be created."
  type        = string
}

variable "kubernetes_cluster_node_pool_vm_size" {
  description = "The resource group where the kubernetes cluster is created. Changing this forces a new resource to be created."
  type        = string
}

variable "kubernetes_cluster_node_pool_enable_auto_scaling" {
  description = "The resource group where the kubernetes cluster is created. Changing this forces a new resource to be created."
  type        = bool
}

variable "kubernetes_cluster_node_pool_min_count" {
  description = "The resource group where the kubernetes cluster is created. Changing this forces a new resource to be created."
  type        = number
}

variable "kubernetes_cluster_node_pool_max_count" {
  description = "The resource group where the kubernetes cluster is created. Changing this forces a new resource to be created."
  type        = number
}

variable "kubernetes_cluster_node_pool_max_surge" {
  description = "The resource group where the kubernetes cluster is created. Changing this forces a new resource to be created."
  type        = number
}

variable "subnet_id" {
  description = "The resource group where the kubernetes cluster is created. Changing this forces a new resource to be created."
  type        = string
}



