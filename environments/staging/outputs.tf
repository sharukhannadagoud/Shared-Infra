output "resource_group_name" {
  value = azurerm_resource_group.main.name
}

output "location" {
  value = azurerm_resource_group.main.location
}

output "vnet_id" {
  value = module.networking.vnet_id
}

output "aks_cluster_name" {
  value = module.compute.aks_cluster_name
}

output "acr_name" {
  value = module.storage.acr_name
}