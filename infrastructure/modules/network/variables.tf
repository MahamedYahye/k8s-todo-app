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

variable "location" {
  description = "Azure regio"
  type        = string
}

variable "resource_group_name" {
  description = "Naam van de resource group"
  type        = string
}

variable "tags" {
  description = "Tags voor resources"
  type        = map(string)
  default     = {}
}
