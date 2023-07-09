variable "location" {
  type        = string
  description = "region"
}

variable "resource_group_name" {
  type        = string
  description = "resource group name"
}

variable "vnet_name" {
  type        = string
  description = "the name to be assigned to the VNET"
}

variable "address_space" {
  default     = "172.24.0.0/16"
  description = "assign cidr block to the virtual network"
}
variable "private_subnet_cidr" {
  default     = "172.24.1.0/24"
  description = "assign a cidr block to the private subnet or use the default"
}
variable "public_subnet_cidr" {
  default     = "172.24.2.0/24"
  description = "assign a cidr block to the public subnet or use the default"
}

variable "private_subnet_service_endpoints" {
  description = "The list of service endpoints to be added to the subnet"
  type        = list(string)
  default     = []
}

variable "public_subnet_service_endpoints" {
  description = "The list of service endpoints to be added to the subnet"
  type        = list(string)
  default     = []
}

variable "private_subnet_name" {
  type        = string
  default     = "corp_private_subnet"
  description = "private subnet name"
}

variable "public_subnet_name" {
  type        = string
  default     = "corp_public_subnet"
  description = "public subnet name"
}

variable "environment" {
  type        = string
  description = "network environment"
}


variable "tags" {
  type        = map(string)
  description = "tags"
}
