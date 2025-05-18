variable "storage_account_name" {
  description = "The name of the storage account."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the storage account will be created."
  type        = string
}

variable "location" {
  description = "The Azure region where the storage account will be created."
  type        = string
}

variable "sku" {
  description = "The SKU of the storage account."
  type        = string
  default     = "Standard_LRS"
}

variable "kind" {
  description = "The kind of storage account."
  type        = string
  default     = "StorageV2"
}

variable "enable_https_traffic_only" {
  description = "Whether to allow only HTTPS traffic to the storage account."
  type        = bool
  default     = true
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resources"
  type        = string
}

variable "account_tier" {
  description = "The tier of the storage account"
  type        = string
}

variable "account_replication_type" {
  description = "The replication type of the storage account"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the resources"
  type        = map(string)
}

variable "acr_name" {
  description = "The name of the Azure Container Registry"
  type        = string
}

variable "acr_sku" {
  description = "The SKU of the Azure Container Registry"
  type        = string
}

variable "acr_admin_enabled" {
  description = "Whether admin user is enabled for the Azure Container Registry"
  type        = bool
}

variable "key_vault_name" {
  description = "The name of the Azure Key Vault"
  type        = string
}

variable "key_vault_sku" {
  description = "The SKU of the Azure Key Vault"
  type        = string
}

variable "tenant_id" {
  description = "The tenant ID for the Azure Key Vault"
  type        = string
}

variable "soft_delete_retention_days" {
  description = "The number of days to retain soft-deleted Key Vaults"
  type        = number
}

variable "purge_protection_enabled" {
  description = "Whether purge protection is enabled for the Key Vault"
  type        = bool
}