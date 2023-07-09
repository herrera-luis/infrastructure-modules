
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
  service_endpoints    = var.private_subnet_service_endpoints
  dynamic "delegation" {
    for_each = var.private_subnet_delegation_name != "" && var.private_subnet_service_delegation_name != "" && length(var.private_subnet_service_delegation_actions) > 0 ? [1] : []
    content {
      name = var.private_subnet_delegation_name

      service_delegation {
        name    = var.private_subnet_service_delegation_name
        actions = var.private_subnet_service_delegation_actions
      }
    }
  }
}

resource "azurerm_subnet" "public_subnet" {
  name                 = "${var.public_subnet_name}-${var.environment}"
  resource_group_name  = data.azurerm_resource_group.this.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["${var.public_subnet_cidr}"]
  service_endpoints    = var.public_subnet_service_endpoints
  dynamic "delegation" {
    for_each = var.public_subnet_delegation_name != "" && var.public_subnet_service_delegation_name != "" && length(var.public_subnet_service_delegation_actions) > 0 ? [1] : []
    content {
      name = var.public_subnet_delegation_name

      service_delegation {
        name    = var.public_subnet_service_delegation_name
        actions = var.public_subnet_service_delegation_actions
      }
    }
  }
}