
output "private_subnet_name" {
  value       = azurerm_subnet.private_subnet.name
  description = "private subnet name"
}

output "public_subnet_name" {
  value       = azurerm_subnet.public_subnet.name
  description = "public subnet name"
}

output "virtual_network_name" {
  value       = azurerm_virtual_network.main.name
  description = "vnet name"
}