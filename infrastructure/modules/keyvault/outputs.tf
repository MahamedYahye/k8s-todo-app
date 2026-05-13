output "keyvault_name" {
  description = "Naam van de Key Vault"
  value       = azurerm_key_vault.kv.name
}

output "keyvault_uri" {
  description = "URI van de Key Vault"
  value       = azurerm_key_vault.kv.vault_uri
}

output "keyvault_id" {
  description = "ID van de Key Vault"
  value       = azurerm_key_vault.kv.id
}
