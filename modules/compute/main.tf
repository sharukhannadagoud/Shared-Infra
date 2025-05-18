resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = "default"
    node_count = var.agent_count
    vm_size    = var.vm_size
  }

  linux_profile {
    admin_username = var.admin_username
    ssh_key {
      key_data = var.ssh_key_data
    }
  }

  service_principal {
    client_id     = var.client_id
    client_secret = var.client_secret
  }

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags
}