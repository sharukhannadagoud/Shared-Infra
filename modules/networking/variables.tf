variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
}

variable "vnet_address_space" {
  description = "The address space for the virtual network"
  type        = list(string)
}

variable "subnet_names" {
  description = "A list of subnet names"
  type        = list(string)
}

variable "subnet_prefixes" {
  description = "A list of subnet address prefixes"
  type        = list(string)
}

variable "location" {
  description = "The Azure region where the resources will be created"
  type        = string
}

variable "address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to resources."
  type        = map(string)
}

variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
}

variable "subnet_address_prefix" {
  description = "The address prefix for the subnet."
  type        = string
}

variable "nsg_name" {
  description = "The name of the network security group."
  type        = string
}

variable "location" {
  description = "The location/region for the resources."
  type        = string
}

variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
}