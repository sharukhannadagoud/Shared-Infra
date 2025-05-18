resource "azurerm_resource_group" "prod" {
  name     = "prod-resource-group"
  location = var.location
}

module "networking" {
  source              = "../../modules/networking"
  resource_group_name = azurerm_resource_group.prod.name
  location            = var.location
  tags                = {
    environment = "production"
    owner       = "team-networking"
  }
  address_space       = ["10.0.0.0/16"]
  vnet_name           = "prod-vnet"
  vnet_address_space  = ["10.0.0.0/16"]
  subnet_name         = "prod-subnet"
  subnet_address_prefix = "10.0.1.0/24"
  subnet_prefixes     = ["10.0.1.0/24"]
  subnet_names        = ["prod-subnet"]
  nsg_name            = "prod-nsg"
}

module "compute" {
  source              = "../../modules/compute"
  resource_group_name = azurerm_resource_group.prod.name
  location            = var.location
  vm_name             = "prod-vm"
  vm_size             = "Standard_DS1_v2"
  admin_username      = "adminuser"
  admin_password      = "P@ssw0rd1234"
  ssh_key_data        = file("~/.ssh/id_rsa.pub")
  client_id           = var.client_id
  client_secret       = var.client_secret
  cluster_name        = "prod-cluster"
  dns_prefix          = "prod-dns"
  image_publisher     = "Canonical"
  image_offer         = "UbuntuServer"
  image_sku           = "18.04-LTS"
  agent_count         = 2
  tags                = {
    environment = "production"
    owner       = "team-compute"
  }
}

module "storage" {
  source                    = "../../modules/storage"
  resource_group_name       = azurerm_resource_group.prod.name
  location                  = var.location
  tenant_id                 = var.tenant_id
  purge_protection_enabled  = true
  acr_name                  = "prod-acr"
  account_tier              = "Standard"
  tags                      = {
    environment = "production"
    owner       = "team-storage"
  }
  acr_admin_enabled         = true
  acr_sku                   = "Premium"
  key_vault_name            = "prod-keyvault"
  account_replication_type  = "LRS"
  storage_account_name      = "prodstorageacct"
  key_vault_sku             = "standard"
  soft_delete_retention_days = 7
}