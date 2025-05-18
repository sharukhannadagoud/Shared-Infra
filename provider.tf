provider "azurerm" {
  features {}

  # Authentication can be done using environment variables or managed identity
  # Uncomment the following lines if you want to specify a client_id and client_secret
  # client_id       = var.client_id
  # client_secret   = var.client_secret
  # tenant_id       = var.tenant_id
}