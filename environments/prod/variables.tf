variable "resource_group_name" {
  description = "The name of the resource group for the production environment."
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be provisioned."
  type        = string
  default     = "East US"
}

variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
}

variable "vnet_address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
}

variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
}

variable "subnet_prefix" {
  description = "The address prefix for the subnet."
  type        = string
}

variable "aks_name" {
  description = "The name of the Azure Kubernetes Service."
  type        = string
}

variable "aks_node_count" {
  description = "The number of nodes in the AKS cluster."
  type        = number
  default     = 3
}

variable "acr_name" {
  description = "The name of the Azure Container Registry."
  type        = string
}

variable "key_vault_name" {
  description = "The name of the Azure Key Vault."
  type        = string
}

# Example variable definitions
variable "location" {
  description = "The Azure region to deploy resources"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "environment" {
  description = "The environment name (e.g., dev, prod)"
  type        = string
}

variable "subnet_address_prefix" {
  description = "The address prefix for the subnet"
  type        = string
}

variable "aks_vm_size" {
  description = "The size of the Azure Kubernetes Service VMs"
  type        = string
}

variable "client_id" {
  description = "The Client ID for the Service Principal"
  type        = string
}

variable "client_secret" {
  description = "The Client Secret for the Service Principal"
  type        = string
}

# Add your variable declarations here

variable "tenant_id" {
  description = "The Tenant ID for the Azure subscription"
  type        = string
}
