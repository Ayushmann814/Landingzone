resource "azurerm_virtual_network" "vnet-tf" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = ["10.0.0.0/16"]


 dynamic "subnet" {
    for_each = var.subnets
    content {
      name           = subnet.key   
      address_prefixes = subnet.value
    }
   
 }
}