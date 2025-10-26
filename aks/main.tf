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
 
  location            = var.location
  resource_group_name = var.resource_group_name
}

module "vnet" {
  source = "../modules/azurerm_vnet"
    vnet_name           = "myVNet"
  subnets = var.subnets
  location            = var.location
  resource_group_name = var.resource_group_name
  
}
