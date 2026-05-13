output "aks_cluster_name" {
  description = "Naam van het AKS cluster"
  value       = module.aks.cluster_name
}

output "resource_group_name" {
  description = "Naam van de resource group"
  value       = azurerm_resource_group.rg.name
}

output "keyvault_name" {
  description = "Naam van de Key Vault"
  value       = module.keyvault.keyvault_name
}

output "keyvault_uri" {
  description = "URI van de Key Vault"
  value       = module.keyvault.keyvault_uri
}

output "get_credentials_command" {
  description = "Commando om kubectl te verbinden"
  value       = "az aks get-credentials --resource-group ${azurerm_resource_group.rg.name} --name ${module.aks.cluster_name}"
}

output "vnet_id" {
  description = "ID van het VNet"
  value       = module.network.vnet_id
}

output "vnet_name" {
  description = "Naam van het VNet"
  value       = module.network.vnet_name
}

output "aks_subnet_id" {
  description = "ID van de AKS subnet"
  value       = module.network.aks_subnet_id
}

output "nsg_id" {
  description = "ID van de NSG"
  value       = module.network.nsg_id
}
