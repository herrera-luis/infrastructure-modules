
output "private_subnet_id" {
  value       = azurerm_subnet.private_subnet.id
  description = "private subnet id"
}

output "private_subnet_name" {
  value       = azurerm_subnet.private_subnet.name
  description = "private subnet name"
}

output "public_subnet_name" {
  value       = azurerm_subnet.public_subnet.name
  description = "public subnet name"
}

output "public_subnet_id" {
  value       = azurerm_subnet.public_subnet.id
  description = "public subnet id"
}

output "virtual_network_name" {
  value       = azurerm_virtual_network.main.name
  description = "vnet name"
}