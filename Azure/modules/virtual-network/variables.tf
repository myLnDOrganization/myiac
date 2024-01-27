variable "environment" {
  type        = string
  description = "Environment name in Azure"
}

variable "resource_group_name" {
  description = "The location/region where the virtual network is created. Changing this forces a new resource to be created."
  type        = string
}

variable "virtual_network_name" {
  description = "Name of the vnet to create."
  type        = string
}

variable "virtual_network_location" {
  description = "The location/region where the virtual network is created. Changing this forces a new resource to be created."
  type        = string
}

variable "virtual_network_address_space" {
  description = "The address space that is used by the virtual network."
  type        = list(string)
}

