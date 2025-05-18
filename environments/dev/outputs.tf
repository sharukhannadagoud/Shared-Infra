output "dev_resource_group_name" {
  value = azurerm_resource_group.dev_rg.name
}

output "dev_storage_account_name" {
  value = azurerm_storage_account.dev_storage.name
}

output "dev_virtual_network_name" {
  value = azurerm_virtual_network.dev_vnet.name
}

output "dev_subnet_name" {
  value = azurerm_subnet.dev_subnet.name
}

output "dev_aks_name" {
  value = azurerm_kubernetes_cluster.dev_aks.name
}