output "blob_url" {
  description = "Url assigned to Blob's"
  value       = azurerm_storage_blob.blob_storage.url
}

output "storage_account_name" {
  description = "Storage Account Name"
  value       = var.create_storage_account ? azurerm_storage_account.storage_account[0].name : data.azurerm_storage_account.storage_account[0].name
}

output "container_name" {
  description = "Container's  Name"
  value       = var.create_storage_container ? azurerm_storage_container.container[0].name : data.azurerm_storage_container.container[0].name
}

output "resource_group_name" {
  description = "Resource group Name"
  value       = var.create_storage_account ? azurerm_storage_account.storage_account[0].resource_group_name : data.azurerm_storage_account.storage_account[0].resource_group_name
}