
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_virtual_network" "main" {
  name                = "${var.vnet_name}-${var.environment}"
  location            = data.azurerm_resource_group.this.location
  resource_group_name = data.azurerm_resource_group.this.name
  address_space       = [var.address_space]
  tags                = var.tags
}

resource "azurerm_subnet" "private_subnet" {
  name                 = "${var.private_subnet_name}-${var.environment}"
  resource_group_name  = data.azurerm_resource_group.this.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["${var.private_subnet_cidr}"]
}

resource "azurerm_subnet" "public_subnet" {
  name                 = "${var.public_subnet_name}-${var.environment}"
  resource_group_name  = data.azurerm_resource_group.this.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["${var.public_subnet_cidr}"]
}