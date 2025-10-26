resource "azurerm_virtual_network" "vnet-tf" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = ["10.0.0.0/16"]


 dynamic "subnet" {
    for_each = var.subnets == null ? {} : var.subnets
    content {
      name           = subnet.value.name
      address_prefixes = subnet.value.address_prefixes
    }
   
 }

 dynamic "ddos_protection_plan" {
  for_each = var.ddos_protection_plan == null ? [] : [var.ddos_protection_plan]
  content {
    id = ddos_protection_plan.value.id
    enable = "true"
   
 }
}
dns_servers = var.dns_servers

# dynamic ip_address_pool {
#   for_each = var.ip_address_pool == null ? {} : var.ip_address_pool
#   content {
#    id = each.value.id
#    number_of_ip_addresses = each.value.number_of_ip_addresses
# }
# }
}