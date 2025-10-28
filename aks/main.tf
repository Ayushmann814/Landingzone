# module "aks" {
#   source = "../modules/azurerm_aks"
 
#   aks_name            = "myAKSCluster"
#   location            = var.location
#   resource_group_name = var.resource_group_name
# }

module "acr" {
  source = "../modules/azurerm_acr"
  acrs  = var.acrs
}



module "resource_group" {
  source = "../modules/azurerm_resource_group"
  resource_group_name = var.resource_group_name
}

module "vnet" {
  source = "../modules/azurerm_vnet"
    virtual_network         = var.virtual_network
  subnets = var.subnets
  ddos_protection_plan = var.ddos_protection_plan
  dns_servers = var.dns_servers
  ip_address_pool = var.ip_address_pool
}
