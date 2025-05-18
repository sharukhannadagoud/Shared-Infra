resource "azurerm_resource_group" "dev" {
  name     = "dev-resource-group"
  location = var.location
}

module "networking" {
  source               = "../../modules/networking"
  location             = azurerm_resource_group.dev.location
  resource_group_name  = azurerm_resource_group.dev.name
  vnet_name            = "dev-vnet"
  vnet_address_space   = ["10.0.0.0/16"]
  subnet_names         = ["subnet1", "subnet2"]
  subnet_prefixes      = ["10.0.1.0/24", "10.0.2.0/24"]
  nsg_name             = "dev-nsg"
  address_space        = ["10.0.0.0/16"]
  subnet_address_prefix = ["10.0.1.0/24", "10.0.2.0/24"]
  subnet_name          = ["subnet1", "subnet2"]
  tags = {
    environment = "dev"
  }
}

module "compute" {
  source               = "../../modules/compute"
  location             = azurerm_resource_group.dev.location
  resource_group_name  = azurerm_resource_group.dev.name
  admin_username       = "adminuser"
  admin_password       = "P@ssw0rd123"
  vm_name              = "dev-vm"
  vm_size              = "Standard_DS1_v2"
  image_publisher      = "Canonical"
  image_offer          = "UbuntuServer"
  image_sku            = "18.04-LTS"
  client_id            = var.client_id
  client_secret        = var.client_secret
  ssh_key_data         = file("~/.ssh/id_rsa.pub")
  agent_count          = 2
  cluster_name         = "dev-cluster"
  dns_prefix           = "devdns"
  tags = {
    environment = "dev"
  }
}

module "storage" {
  source                     = "../../modules/storage"
  resource_group_name        = azurerm_resource_group.dev.name
  location                   = azurerm_resource_group.dev.location
  storage_account_name       = "devstorageacct"
  account_tier               = "Standard"
  account_replication_type   = "LRS"
  acr_name                   = "devacr"
  acr_sku                    = "Basic"
  acr_admin_enabled          = true
  key_vault_name             = "dev-keyvault"
  key_vault_sku              = "standard"
  purge_protection_enabled   = true
  soft_delete_retention_days = 7
  tenant_id                  = var.tenant_id
  tags = {
    environment = "dev"
  }
}