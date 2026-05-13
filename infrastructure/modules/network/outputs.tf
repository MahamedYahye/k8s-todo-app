output "vnet_id" {
  description = "ID van het VNet"
  value       = azurerm_virtual_network.vnet.id
}

output "vnet_name" {
  description = "Naam van het VNet"
  value       = azurerm_virtual_network.vnet.name
}

output "aks_subnet_id" {
  description = "ID van de AKS subnet"
  value       = azurerm_subnet.aks.id
}

output "nsg_id" {
  description = "ID van de NSG"
  value       = azurerm_network_security_group.aks_nsg.id
}
