resource "azurerm_resource_group" "main" {
  name     = "${var.resource_group}-${var.environment}"
  location = var.location
  tags     = var.tags
}

resource "azurerm_virtual_network" "main" {
  name                = "${var.vnet_name}-${var.environment}"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  address_space       = [var.address_space]
  tags                = var.tags
}

resource "azurerm_subnet" "private_subnet" {
  name                 = "${var.private_subnet_name}-${var.environment}"
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["${var.private_subnet_cidr}"]
  tags                 = var.tags
}

resource "azurerm_subnet" "public_subnet" {
  name                 = "${var.public_subnet_name}-${var.environment}"
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["${var.public_subnet_cidr}"]
  tags                 = var.tags
}