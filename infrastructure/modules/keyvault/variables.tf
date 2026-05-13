variable "keyvault_name" {
  description = "Naam van de Key Vault"
  type        = string
}

variable "location" {
  description = "Azure regio"
  type        = string
}

variable "resource_group_name" {
  description = "Naam van de resource group"
  type        = string
}

variable "tenant_id" {
  description = "Azure tenant ID"
  type        = string
}

variable "aks_identity_id" {
  description = "Object ID van AKS kubelet identity"
  type        = string
}

variable "terraform_object_id" {
  description = "Object ID van de Terraform service principal"
  type        = string
}

variable "db_password" {
  description = "Database wachtwoord"
  type        = string
  sensitive   = true
  default     = "ChangeMeInProduction!"
}

variable "db_username" {
  description = "Database gebruikersnaam"
  type        = string
  default     = "todouser"
}
