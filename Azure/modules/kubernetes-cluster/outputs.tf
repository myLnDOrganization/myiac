output "kubernetes_cluster_kube_config" {
  description = "The kube config of the newly created kubernetes cluster"
  value       = azurerm_kubernetes_cluster.kubernetes_cluster.kube_config
}