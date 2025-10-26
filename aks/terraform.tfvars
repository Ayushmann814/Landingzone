location = "central india"
resource_group_name = "myResourceGroup"
vnet_name = "myVnet"

subnets =  {

subnet1 = ["10.0.1.0/24"]
subnet2 = ["10.0.2.0/24"]
subnet3 = ["10.0.3.0/24"]
subnet4 = ["10.0.4.0/24"]
subnet5 = ["10.0.5.0/24"]
}

acrs = {
  "acr1" = {
    name                = "containerRegistry1"
    location            = "central india"
    resource_group_name = "milaznonprod-rg"
    sku                 = "Premium"
    
  }
  "acr2" = {
    name                = "containerRegistry2"
    location            = "central india"
    resource_group_name = "milaznonprod-rg"
    sku                 = "Premium"
    
  }
}