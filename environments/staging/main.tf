resource "azurerm_resource_group" "staging" {
  name     = "staging-rg"
  location = "East US"
}

module "networking" {
  source                = "../../modules/networking"
  resource_group_name   = azurerm_resource_group.staging.name
  location              = azurerm_resource_group.staging.location
  vnet_name             = "staging-vnet"
  vnet_address_space    = ["10.0.0.0/16"]
  subnet_name           = "staging-subnet"
  subnet_names          = ["subnet1", "subnet2"]
  subnet_prefixes       = ["10.0.1.0/24", "10.0.2.0/24"]
  subnet_address_prefix = "10.0.1.0/24"
  nsg_name              = "staging-nsg"
  address_space         = ["10.0.0.0/16"]
  tags = {
    environment = "staging"
    project     = "example"
  }
}

module "compute" {
  source              = "../../modules/compute"
  resource_group_name = azurerm_resource_group.staging.name
  location            = azurerm_resource_group.staging.location
  dns_prefix          = "staging-dns"
  cluster_name        = "staging-cluster"
  client_id           = "your-client-id"
  client_secret       = "your-client-secret"
  admin_username      = "adminuser"
  admin_password      = "your-admin-password"
  ssh_key_data        = "your-ssh-key-data"
  vm_name             = "staging-vm"
  vm_size             = "Standard_DS1_v2"
  agent_count         = 2
  image_offer         = "UbuntuServer"
  image_publisher     = "Canonical"
  image_sku           = "18.04-LTS"
  tags = {
    environment = "staging"
    project     = "example"
  }
}

module "storage" {
  source                     = "../../modules/storage"
  resource_group_name        = azurerm_resource_group.staging.name
  location                   = azurerm_resource_group.staging.location
  acr_name                   = "staging-acr"
  acr_admin_enabled          = true
  acr_sku                    = "Standard"
  soft_delete_retention_days = 7
  account_replication_type   = "LRS"
  purge_protection_enabled   = true
  key_vault_sku              = "standard"
  storage_account_name       = "stagingstorageacct"
  tenant_id                  = "your-tenant-id"
  account_tier               = "Standard"
  key_vault_name             = "staging-keyvault"
  tags = {
    environment = "staging"
    project     = "example"
  }
}