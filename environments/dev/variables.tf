variable "resource_group_name" {
  description = "The name of the resource group for the development environment"
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be deployed"
  type        = string
  default     = "East US"
}

variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
}

variable "aks_name" {
  description = "The name of the Azure Kubernetes Service"
  type        = string
}

variable "acr_name" {
  description = "The name of the Azure Container Registry"
  type        = string
}

variable "sku" {
  description = "The SKU for the Azure resources"
  type        = string
  default     = "Standard"
}

variable "client_id" {
  description = "The client ID for the service principal"
  type        = string
}

variable "client_secret" {
  description = "The client secret for the service principal"
  type        = string
}

# Add your variable declarations here

variable "tenant_id" {
  description = "The Tenant ID for the Azure subscription"
  type        = string
}