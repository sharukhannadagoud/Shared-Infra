output "storage_account_name" {
  value = azurerm_storage_account.example.name
}

output "storage_account_primary_access_key" {
  value = azurerm_storage_account.example.primary_access_key
}

output "container_name" {
  value = azurerm_storage_container.example.name
}