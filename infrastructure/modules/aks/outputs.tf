output "cluster_name" {
  description = "Naam van het AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.name
}

output "kubelet_identity_object_id" {
  description = "Object ID van de kubelet identity voor Key Vault toegang"
  value       = azurerm_kubernetes_cluster.aks.kubelet_identity[0].object_id
}

output "kube_config" {
  description = "Kubeconfig voor kubectl"
  value       = azurerm_kubernetes_cluster.aks.kube_config_raw
  sensitive   = true
}
