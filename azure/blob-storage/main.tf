resource "azurerm_storage_account" "storage_account" {
  count                    = var.create_storage_account ? 1 : 0
  name                     = var.azurerm_storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  allow_blob_public_access = true
}

data "azurerm_storage_account" "storage_account" {
  count               = var.create_storage_account ? 0 : 1
  name                = var.azurerm_storage_account_name
  resource_group_name = var.resource_group_name
}

resource "azurerm_storage_container" "container" {
  count                 = var.create_storage_container ? 1 : 0
  name                  = var.azurerm_storage_container_name
  storage_account_name  = var.create_storage_account ? azurerm_storage_account.storage_account[0].name : data.azurerm_storage_account.storage_account[0].name
  container_access_type = "blob"
}

data "azurerm_storage_container" "container" {
  count                = var.create_storage_container ? 0 : 1
  name                 = var.azurerm_storage_container_name
  storage_account_name = var.create_storage_account ? azurerm_storage_account.storage_account[0].name : data.azurerm_storage_account.storage_account[0].name
}

resource "azurerm_storage_blob" "blob_storage" {
  name                   = var.azurerm_storage_blob_name
  storage_account_name   = var.create_storage_account ? azurerm_storage_account.storage_account[0].name : data.azurerm_storage_account.storage_account[0].name
  storage_container_name = var.create_storage_container ? azurerm_storage_container.container[0].name : data.azurerm_storage_container.container[0].name
  type                   = "Block"
}