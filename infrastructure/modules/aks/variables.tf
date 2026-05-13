variable "cluster_name" {
  description = "Naam van het AKS cluster"
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

variable "node_count" {
  description = "Aantal nodes"
  type        = number
}

variable "vm_size" {
  description = "VM grootte"
  type        = string
}

variable "kubernetes_version" {
  description = "Kubernetes versie"
  type        = string
}

variable "vnet_subnet_id" {
  description = "ID van de VNet subnet voor AKS"
  type        = string
}
