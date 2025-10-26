variable "vnet_name" {
  description = "The name of the Virtual Network."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Virtual Network."
  type        = string
  
}
variable "location" {
  description = "The Azure location where the Virtual Network should be created."
  type        = string
}

variable "subnets" {
  description = "A map of subnets to create within the Virtual Network."
  type = map(object({

  name = string
  address_prefixes = list(string)
  
 } ))
  
}