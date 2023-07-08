variable "resource_group_name" {
  type        = string
  description = "Name of the resource group name on Azure"
}

variable "location" {
  type        = string
  description = "The Azure location where the resources exist. Changing this forces a new resource to be created."
}

variable "azurerm_storage_account_name" {
  type        = string
  description = "Name of the Azore Storage Account"
}

variable "create_storage_account" {
  type        = bool
  description = "Flag to create Storage account"
  default     = true
}

variable "create_storage_container" {
  type        = bool
  description = "Flag to create Azure Container"
  default     = true
}

variable "azurerm_storage_container_name" {
  type        = string
  description = "Name of the container of Azure"
}

variable "azurerm_storage_blob_name" {
  type        = string
  description = "Name of the Azure's Blob"
}

variable "tags" {
  type        = map(string)
  description = "tags"
}
