variable "resource_group_name" {
  description = "The name of the resource group in which to create the Container Registry."
  type        = string
}

variable "location" {
  description = "The Azure location where the Container Registry should be created."
  type        = string
}

variable "vnet_name" {
  description = "The name of the Virtual Network."
  type        = string
  
}


variable "subnets" {
  description = "A map of subnets to create within the Virtual Network."
  type = map(list(string))
  
}