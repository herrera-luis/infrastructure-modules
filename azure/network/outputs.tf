output "resource_group_id" {
  value       = azurerm_resource_group.main.id
  description = "resource group id"
}

output "resource_group_name" {
  value       = azurerm_resource_group.main.name
  description = "resource group name"
}

output "private_subnet_id" {
  value       = azurerm_subnet.private_subnet.id
  description = "private subnet id"
  sensitive   = true
}

output "resource-group-name" {
  value       = azurerm_resource_group.main.name
  description = "Resource group name created"
}

output "location" {
  value       = azurerm_resource_group.main.location
  description = "Location of this resource group"
}

output "public_subnet_id" {
  value       = azurerm_subnet.public_subnet.id
  description = "public subnet id"
  sensitive   = true
}