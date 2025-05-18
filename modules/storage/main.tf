resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier            = var.account_tier
  account_replication_type = var.account_replication_type

  tags = var.tags
}

resource "azurerm_container_registry" "example" {
  name                = var.acr_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.acr_sku

  admin_enabled = var.acr_admin_enabled
}

resource "azurerm_key_vault" "example" {
  name                = var.key_vault_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku_name            = var.key_vault_sku

  tenant_id = var.tenant_id

  soft_delete_retention_days = var.soft_delete_retention_days
  purge_protection_enabled    = var.purge_protection_enabled

  tags = var.tags
}