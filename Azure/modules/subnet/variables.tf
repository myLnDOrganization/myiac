variable "environment" {
  type        = string
  description = "Environment name in Azure"
}

variable "resource_group_name" {
  description = "The location/region where the subnet is created. Changing this forces a new resource to be created."
  type        = string
}

variable "virtual_network_name" {
  description = "Name of the vnet."
  type        = string
}

variable "subnet_name" {
  description = "Name of the Subnet."
  type        = string
}

variable "subnet_address_prefixes" {
  description = "The address prefix that is used by the subnet."
  type        = list(string)
}

