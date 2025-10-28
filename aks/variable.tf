variable "resource_group_name" {
  description = "The name of the resource group in which to create the Container Registry."
  type        = map(object({
    name = string
    location = string
  }))
}

variable "location" {
  description = "The Azure location where the Container Registry should be created."
  type        = string
}

variable "vnet_name" {
  description = "The name of the Virtual Network."
  type        = string

}

variable "ddos_protection_plan" {
  description = "The DDoS Protection Plan to associate with the Virtual Network."
  type = object({
    id = string
  })
  
  
}
variable "subnets" {
  description = "A map of subnets to create within the Virtual Network."
  type        = map(object({
    name             = string
    address_prefixes = list(string)
  })) 

}

variable "dns_servers" {
  description = "A list of DNS servers IP addresses."
  type        = list(string)
  default     = []
  
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

variable "ip_address_pool" {
  description = "A map of IP address pools to associate with the Virtual Network."
  type = map(object({
    id = string
    number_of_ip_addresses = number
  }))
  default = {}
}
