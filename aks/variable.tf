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
  type        = map(object({
    name             = string
    address_prefixes = list(string)
  })) 

}

variable "acrs" {
  description = "value"
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    sku                 = string

  }))
}
