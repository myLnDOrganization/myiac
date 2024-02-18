variable "environment" {
  type        = string
  description = "Environment name in Azure"
}

variable "resource_group_name" {
  description = "The location/region where the container registry is created. Changing this forces a new resource to be created."
  type        = string
}

variable "container_registry_name" {
  description = "Name of the container registry to create."
  type        = string
}

variable "container_registry_location" {
  description = "The location/region where the container registry is created. Changing this forces a new resource to be created."
  type        = string
}

variable "container_registry_sku" {
  description = "The sku that is used by the container registry."
  type        = string
}

variable "container_registry_georep_loc" {
  description = "The sku that is used by the container registry."
  type        = string
}

variable "container_registry_georep_zr_enabled" {
  description = "The sku that is used by the container registry."
  type        = bool
}

