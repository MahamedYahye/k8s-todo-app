variable "resource_group_name" {
  description = "Naam van de resource group"
  type        = string
  default     = "rg-todo-app"
}

variable "location" {
  description = "Azure regio"
  type        = string
  default     = "westeurope"
}

variable "cluster_name" {
  description = "Naam van het AKS cluster"
  type        = string
  default     = "aks-todo-app"
}

variable "node_count" {
  description = "Aantal nodes"
  type        = number
  default     = 1
}

variable "vm_size" {
  description = "VM grootte voor nodes"
  type        = string
  default     = "Standard_B2s"
}

variable "kubernetes_version" {
  description = "Kubernetes versie"
  type        = string
  default     = "1.33.10"
}

variable "keyvault_name" {
  description = "Naam van de Key Vault"
  type        = string
  default     = "kv-todo-app-my01"
}

variable "vnet_name" {
  description = "Naam van het VNet"
  type        = string
  default     = "vnet-todo-app"
}

variable "vnet_cidr" {
  description = "CIDR blok voor het VNet"
  type        = string
  default     = "10.0.0.0/16"
}

variable "aks_subnet_name" {
  description = "Naam van de AKS subnet"
  type        = string
  default     = "subnet-aks"
}

variable "aks_subnet_cidr" {
  description = "CIDR blok voor de AKS subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "nsg_name" {
  description = "Naam van de Network Security Group"
  type        = string
  default     = "nsg-aks"
}
