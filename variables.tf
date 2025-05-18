variable "resource_group_name" {
  description = "The name of the resource group where the infrastructure will be provisioned."
  type        = string
}

variable "location" {
  description = "The Azure region where the resources will be created."
  type        = string
  default     = "East US"
}

variable "environment" {
  description = "The environment for which the infrastructure is being provisioned (dev, staging, prod)."
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resources."
  type        = map(string)
  default     = {}
}