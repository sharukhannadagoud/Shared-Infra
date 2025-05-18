resource "azurerm_resource_group" "dev" {
  name     = "dev-resource-group"
  location = var.location
}

module "networking" {
  source              = "../../modules/networking"
  location            = azurerm_resource_group.dev.location
  vnet_name           = "dev-vnet"
  vnet_address_space  = ["10.0.0.0/16"]
  subnet_names        = ["subnet1", "subnet2"]
  subnet_prefixes     = ["10.0.1.0/24", "10.0.2.0/24"]
}

module "compute" {
  source              = "../../modules/compute"
  location            = azurerm_resource_group.dev.location
  admin_username      = "adminuser"
  admin_password      = "P@ssw0rd123"
}

module "storage" {
  source               = "../../modules/storage"
  resource_group_name  = azurerm_resource_group.dev.name
  location             = azurerm_resource_group.dev.location
  storage_account_name = "devstorageacct"
}