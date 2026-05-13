terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

module "network" {
  source = "./modules/network"

  vnet_name           = var.vnet_name
  vnet_cidr           = var.vnet_cidr
  aks_subnet_name     = var.aks_subnet_name
  aks_subnet_cidr     = var.aks_subnet_cidr
  nsg_name            = var.nsg_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  tags = {
    environment = "learning"
    project     = "todo-app"
  }
}

module "aks" {
  source = "./modules/aks"

  cluster_name        = var.cluster_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  node_count          = var.node_count
  vm_size             = var.vm_size
  kubernetes_version  = var.kubernetes_version
  vnet_subnet_id      = module.network.aks_subnet_id
}

module "keyvault" {
  source = "./modules/keyvault"

  keyvault_name       = var.keyvault_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  tenant_id           = data.azurerm_client_config.current.tenant_id
  aks_identity_id     = module.aks.kubelet_identity_object_id
  terraform_object_id = data.azurerm_client_config.current.object_id
}

data "azurerm_client_config" "current" {}
